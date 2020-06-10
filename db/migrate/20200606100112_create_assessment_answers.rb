class CreateAssessmentAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :assessment_answers do |t|
      t.string :letter
      t.string :answer
      t.boolean :correct
      t.integer :question_id, index: true
      t.integer :assessment_id, index: true
      t.integer :user_id, index: true

      t.timestamps
    end
  end
end
