require 'logger'

module Miq
  class Executor
    def shell(cmd)
      if debug?
        logger.debug(cmd)
      else
        Bundler.clean_system(cmd)
      end
    end

    def log_dest
      ENV["MIQ_LOG_DEST"] || STDOUT
    end

    def debug?
      !!(ENV["MIQ_DEBUG"])
    end

    # Probably a good idea to use an explicit path to Bundler
    # also allow for user specified path
    def bundler
      ENV["MIQ_BUNDLER"]  || `which bundle`
    end

    private

    def logger
      @logger ||= begin
        lgr = Logger.new(log_dest)
        lgr.level = Logger::DEBUG
        lgr
      end
    end
  end
end
