class CreateLearns < ActiveRecord::Migration[5.2]
  def change
    create_table :learns do |t|
      t.string :learn_title
      t.text :learn_explanation
      t.text :text_essential_thinking
      t.text :text_non_essentila_thinking

      t.timestamps
    end
  end
end
