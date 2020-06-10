class CreateAssessmentsAndQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :assessments_and_questions, id: false do |t|
      t.belongs_to :assessment
      t.belongs_to :question
    end
  end
end
