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
  end
end

Liquid::Template.register_filter(Jekyll::DownloadFilter)
