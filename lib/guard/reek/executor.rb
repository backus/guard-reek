require 'reek/cli/application'

module Guard
  class Reek
    class Executor
      def self.execute(paths, cli_options)
        UI.info "Running reek for files: '#{paths.join('\', \'')}'", reset: true

        args = cli_options + paths

        ::Reek::CLI::Application.new(args).execute
        puts
      end
    end
  end
end
