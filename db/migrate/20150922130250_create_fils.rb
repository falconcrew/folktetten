class CreateFils < ActiveRecord::Migration
  def change
    create_table :fils do |t|
      t.string :name
      t.string :attachment
      t.string :type

      t.timestamps
    end
  end
end
