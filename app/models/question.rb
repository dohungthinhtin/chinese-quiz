class Question < ApplicationRecord
  has_and_belongs_to_many :assessments
  has_many :assessment_options, dependent: :destroy, inverse_of: :question
  has_many :assessment_anwsers, dependent: :destroy, inverse_of: :question

  accepts_nested_attributes_for :assessment_options
  accepts_nested_attributes_for :assessment_answers
end
