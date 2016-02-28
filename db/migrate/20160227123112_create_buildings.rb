class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.integer :builld_time
      t.integer :level
      t.timestamps null: false
    end
  end
end
