require 'rails/generators/active_record'

module Merit
  module Generators::ActiveRecord
    class InstallGenerator < ::Rails::Generators::Base
      include Rails::Generators::Migration

      source_root File.expand_path('../templates', __FILE__)
      desc 'add active_record merit migrations for the root objects'

      def self.next_migration_number(path)
        ActiveRecord::Generators::Base.next_migration_number(path)
      end

      def copy_migrations_and_model
        migration_template 'create_merit_actions.erb',
                            'db/migrate/create_merit_actions.rb'
        sleep 1.1
        migration_template 'create_merit_activity_logs.erb',
                            'db/migrate/create_merit_activity_logs.rb'
        sleep 1.1
        migration_template 'create_merit_badges.erb',
                            'db/migrate/create_merit_badges.rb'
        sleep 1.1
        migration_template 'create_sashes.erb',
                            'db/migrate/create_sashes.rb'
        sleep 1.1
        migration_template 'create_badges_sashes.erb',
                           'db/migrate/create_badges_sashes.rb'
        sleep 1.1
        migration_template 'create_scores_and_points.erb',
                            'db/migrate/create_scores_and_points.rb'
      end

      def migration_version
        "[#{Rails::VERSION::MAJOR}.#{Rails::VERSION::MINOR}]"
      end
    end
  end
end
