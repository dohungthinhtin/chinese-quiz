class AssessmentAnswer < ApplicationRecord
  belongs_to :assessment
  belongs_to :question

  belongs_to :user
end
