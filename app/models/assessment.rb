class Assessment < ApplicationRecord
  has_and_belongs_to_many :questions
  has_many :assessment_answers, dependent: :destroy, inverse_of: :assessment

  accepts_nested_attributes_for :assessment_answers
end
