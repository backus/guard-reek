require 'guard/compat/plugin'
require 'guard'

module Guard
  class Reek < Plugin
    autoload :Executor, 'guard/reek/executor'

    def start
      ::Guard::UI.info 'Guard::Reek is running'
    end

    def reload; end

    def run_all; end

    def run_on_changes(paths)
      Executor.execute paths
    end
  end
end
