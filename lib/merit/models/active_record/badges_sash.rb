module Merit::Models::ActiveRecord
  class BadgesSash < ActiveRecord::Base
    include Merit::Models::BadgesSashConcern
    belongs_to :badge, foreign_key: "badge_id", class_name: 'Merit::Badge'
    belongs_to :sash, foreign_key: "sash_id", class_name: 'Merit::Sash'
    has_many :activity_logs,
             class_name: 'Merit::ActivityLog',
             as: :related_change
    belongs_to :course, foreign_key: "course_id", class_name: 'Course'

    validates_presence_of :badge_id, :sash
  end
end

class Merit::BadgesSash < Merit::Models::ActiveRecord::BadgesSash; end
