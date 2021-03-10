module Merit::Models::ActiveRecord
  class QalamScore < ActiveRecord::Base
    self.table_name = :merit_scores
    belongs_to :sash,
              foreign_key: "sash_id", 
              class_name: 'Merit::Sash'
    has_many :score_points,
              dependent: :destroy,
              foreign_key: "score_id",
              class_name: 'Merit::QalamScore::Point'

    def points
      score_points.group(:score_id).sum(:num_points).values.first || 0
    end

    class Point < ActiveRecord::Base
      self.table_name = :merit_score_points
      belongs_to :score, 
                  foreign_key: "score_id", 
                  class_name: 'Merit::QalamScore'
      has_one :sash, through: :score, source: :sash
      has_many :activity_logs,
               class_name: 'Merit::ActivityLog',
               as: :related_change
      delegate :sash_id, to: :score
      belongs_to :course, foreign_key: "course_id", class_name: 'Course'

    end
  end
end

class Merit::QalamScore < Merit::Models::ActiveRecord::QalamScore; end
class Merit::QalamScore::Point < Merit::Models::ActiveRecord::QalamScore::Point; end
