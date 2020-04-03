module Jekyll
  module DownloadFilter
    def url_for_docker
      "https://hub.docker.com/r/manageiq/manageiq/"
    end

    def url_for_vagrant(branch)
      "https://app.vagrantup.com/manageiq/boxes/#{branch}"
    end

    def url_for_appliance(platform, filename, extension)
      "http://releases.manageiq.org/manageiq-#{platform}-#{filename}.#{extension}"
    end

    def on_click_for_download(platform, type_name, release_name)
      action = downloadable?(platform) ? 'download' : 'outbound'
      "ga('send', 'event', { eventCategory: 'Appliance', eventAction: '#{action}', eventLabel: '#{type_name} #{release_name}', transport: 'beacon' });"
    end

    private

    def downloadable?(platform)
      !["docker", "vagrant"].include?(platform)
    end
  end
end

Liquid::Template.register_filter(Jekyll::DownloadFilter)
