class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :media
      t.string :description

      t.timestamps
    end
  end
end
