class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.boolean :active
      t.integer :order
      t.string :level
      t.string :question
      t.string :letter
      t.string :answer

      t.timestamps
    end
  end
end
