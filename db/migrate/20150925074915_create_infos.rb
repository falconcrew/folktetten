class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.text :start
      t.text :info
      t.text :contact

      t.timestamps
    end
  end
end
