class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :name
      t.integer :level, limit: 1

      t.timestamps
    end
  end
end
