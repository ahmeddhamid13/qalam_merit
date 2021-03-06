require "rails/generators"

module Merit
  module Generators
    class RemoveGenerator < ::Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)

      def run_active_record_generators
        invoke 'merit:active_record:remove'
      end

      private

      def model_exists?
        File.exist? File.join(destination_root, model_path)
      end

      def model_path
        @model_path ||= File.join('app', 'models', "#{file_path}.rb")
      end
    end
  end
end
