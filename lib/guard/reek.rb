require 'guard/compat/plugin'
require 'guard'

module Guard
  class Reek < Plugin
    autoload :Executor, 'guard/reek/executor'

    def initialize(options = {})
      super

      @options = options
    end

    def start
      ::Guard::UI.info(start_message)
    end

    def reload; end

    def run_all
      execute(run_all_with)
    end

    def run_on_changes(paths)
      execute(paths)
    end

    private

    def start_message
      if cli_options.empty?
        'Guard::Reek is running'
      else
        "Guard::Reek is running with command line options #{cli_options.inspect}!"
      end
    end

    def execute(paths)
      Executor.execute(paths, cli_options)
    end

    def run_all_with
      dirs = @options.fetch(:run_all_with, ['.'])
      return dirs if dirs.is_a?(Array)

      fail ArgumentError, 'Guard::Reek expects `run_all_with` to be an array of paths'
    end

    def cli_options
      @options.fetch(:cli, [])
    end
  end
end
