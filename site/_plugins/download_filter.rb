require 'net/http'
require 'active_support'

module Jekyll
  module DownloadFilter
    def url_at_docker
      "https://hub.docker.com/r/manageiq/manageiq/"
    end

    def url_at_vagrant(branch)
      "https://app.vagrantup.com/manageiq/boxes/#{branch}"
    end

    def url_at_releases(platform, filename, extension)
      "#{RELEASES_URL_PREFIX}/manageiq-#{platform}-#{filename}.#{extension}"
    end

    def on_click_for_download(platform, type_name, release_name)
      action = downloadable?(platform) ? 'download' : 'outbound'
      "ga('send', 'event', { eventCategory: 'Appliance', eventAction: '#{action}', eventLabel: '#{type_name} #{release_name}', transport: 'beacon' });"
    end

    def file_size_from_url(url)
      return "NA" unless url.start_with?(RELEASES_URL_PREFIX)
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

    private

    RELEASES_URL_PREFIX = "http://releases.manageiq.org"

    def downloadable?(platform)
      !["docker", "vagrant"].include?(platform)
    end
  end
end

Liquid::Template.register_filter(Jekyll::DownloadFilter)
