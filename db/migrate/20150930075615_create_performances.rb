class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.string :name
      t.string :location
      t.string :date
      t.string :time
      t.text :description

      t.timestamps
    end
  end
end
