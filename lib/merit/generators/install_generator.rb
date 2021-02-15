require "rails/generators"

module Merit
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      desc 'Copy config and rules files'
      def copy_migrations_and_model
        template 'merit.erb', 'config/initializers/merit.rb'
        sleep 1.1
        template 'sash.erb', 'app/models/merit/sash.rb'
        sleep 1.1
        template 'badge.erb', 'app/models/merit/badge.rb'
        sleep 1.1
        template 'badge_sash.erb', 'app/models/merit/badge_sash.rb'
        sleep 1.1
        template 'merit_badge_rules.erb', 'app/models/merit/badge_rules.rb'
        sleep 1.1
        template 'merit_point_rules.erb', 'app/models/merit/point_rules.rb'
        sleep 1.1
        template 'merit_rank_rules.erb', 'app/models/merit/rank_rules.rb'
      end

      def run_active_record_generators
        invoke 'merit:active_record:install'
      end
    end
  end
end
