class CreateAssessmentOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :assessment_options do |t|
      t.string :letter
      t.string :answer
      t.integer :assessment_question_id, index: true

      t.timestamps
    end
  end
end
