class CreateLearns < ActiveRecord::Migration[5.2]
  def change
    create_table :learns do |t|
      t.string :part
      t.string :title
      t.string :subtitle
      t.text :explanation
      t.text :example_essential_thinking
      t.text :example_non_essential_thinking

      t.timestamps
    end
  end
end
