require 'net/http'
require 'active_support'

module Jekyll
  module DownloadFilter
    def data_for(platform, branch, tag, filename, ext)
      case platform
      when "docker"
        [
          "https://hub.docker.com/r/manageiq/manageiq/tags?page=1&name=#{tag}",
          "NA"
        ]
      when "podified"
        [
          "/docs/get-started/kubernetes",
          "NA"
        ]
      when "vagrant"
        release_url = url_at_releases(platform, filename, ext)
        [
          "https://app.vagrantup.com/manageiq/boxes/#{branch}",
          file_size_from_url(release_url)
        ]
      else
        release_url = url_at_releases(platform, filename, ext)
        [
          release_url,
          file_size_from_url(release_url)
        ]
      end
    end

    def on_click_for_download(platform, type_name, release_name)
      action = downloadable?(platform) ? 'download' : 'outbound'
      "ga('send', 'event', { eventCategory: 'Appliance', eventAction: '#{action}', eventLabel: '#{type_name} #{release_name}', transport: 'beacon' });"
    end

    private

    RELEASES_URL_PREFIX = "http://releases.manageiq.org"

    def url_at_releases(platform, filename, ext)
      "#{RELEASES_URL_PREFIX}/manageiq-#{platform}-#{filename}.#{ext}"
    end

    def file_size_from_url(url)
      uri = URI(url)
      Net::HTTP.start(uri.host, uri.port) do |http|
        response = http.request_head(uri.path)
        if response.code != '200'
          Jekyll.logger.error("Jekyll::DownloadFilter.file_size_from_url(#{url})", "code=#{response.code}, message=#{response.message}")
          return "NA"
        end
        file_size = response['content-length'].to_f
        return ActiveSupport::NumberHelper.number_to_human_size(file_size)
      end
    rescue => error
      Jekyll.logger.error("Jekyll::DownloadFilter.file_size_from_url(#{url})", "error=#{error.message}")
      return "NA"
    end

    def downloadable?(platform)
      !["docker", "vagrant", "podified"].include?(platform)
    end
  end
end

Liquid::Template.register_filter(Jekyll::DownloadFilter)
