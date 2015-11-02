class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.string :name
      t.string :location
      t.integer :year
      t.integer :month
      t.integer :day
      t.string :time
      t.text :description
      t.string :scores, array: true

      t.timestamps
    end
  end
end
