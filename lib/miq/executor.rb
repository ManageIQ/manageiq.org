require 'logger'

module Miq
  class Executor
    def shell(cmd, clean: false)
      if debug?
        logger.debug(cmd)
      else
        run_cmd_with_bundle_env(cmd, clean)
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
      ENV["MIQ_BUNDLER"]  || %x{which bundle}.chomp
    end

    private

    def logger
      @logger ||= begin
        lgr = Logger.new(log_dest)
        lgr.level = Logger::DEBUG
        lgr
      end
    end

    def prep(dir)
      FileUtils.mkdir_p(dir)
    end

    def rm_dir(dir)
      if File.directory?(dir)
        FileUtils.remove_dir(dir)
      end
    end

    # When running commands in main directory we want `system`.
    # When changing directories to run another Ruby process,
    # we need a clean Bundler env.
    # FIXME: This is might be a bit naive
    def run_cmd_with_bundle_env(cmd, clean)
      if clean || (cmd =~ /cd\ /)
        Bundler.clean_system(cmd)
      else
        system(cmd)
      end
    end
  end
end
