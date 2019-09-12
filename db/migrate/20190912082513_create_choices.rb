class CreateChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :choices do |t|
      t.references :word, foreign_key: true
      t.string :name
      t.boolean :is_answer

      t.timestamps
    end
  end
end
