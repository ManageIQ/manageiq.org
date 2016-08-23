require 'logger'

module Miq
  class Executor
    def shell(cmd)
      if debug?
        logger.debug cmd
      else
        system cmd
      end
    end

    def log_dest
      ENV["MIQ_LOG_DEST"] || STDOUT
    end

    def debug?
      !!(ENV["MIQ_DEBUG"])
    end

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
