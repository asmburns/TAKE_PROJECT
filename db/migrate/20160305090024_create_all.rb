class CreateAll < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string  :name
      t.integer :builld_time
      t.integer :level_requirement
      t.integer :price
      t.timestamps null: false
    end
    
    create_table :building_properties do |t|
      t.string     :building_id
      t.string     :property_id
      t.integer    :building_level
      t.timestamps null: false
    end
    
    create_table :properties do |t|
      t.string  :name
      t.string  :type
      t.timestamps null: false
    end
    
    create_table   :building_requirements do |t|
      t.integer    :building_id
      t.integer    :req_building_id
      t.integer    :building_level    
      t.timestamps null: false
    end
    
    create_table :players do |t|
      t.string :username
      t.string :nickname
      t.integer :level
      t.integer :exp
      t.integer :credits
      t.integer :energy
      t.timestamps null: false
    end
    
    create_table :player_buildings do |t|
      t.string     :player_id
      t.string     :building_id
      t.integer    :building_level
      t.datetime   :started_at
      t.boolean    :under_construction
      t.timestamps null: false
    end
    
    create_table :building_udgrades do |t|
      t.string  :building_id
      t.integer :building_level
      t.integer :level_requirement
      t.integer :price
      t.integer :builld_time   
      t.timestamps null: false
    end
    
    create_table :rooms do |t|
      t.string :player_id
      t.integer :turn
      t.timestamps null: false
    end
    
    create_table :room_chats do |t|
      t.integer :room
      t.string :player_id
      t.string  :message
      t.timestamps null: false
    end
    
    create_table :skills do |t|
      t.string :name
      t.timestamps null: false
    end
    
    create_table :skill_properties do |t|
      t.string    :skill
      t.integer   :skill_level
      t.string    :property_name
      t.integer   :property_value
      t.timestamps null: false
    end
    
    create_table :player_slots do |t|
      t.integer    :slot_number
      t.string     :skill
      t.timestamps null: false
    end    
    
  end
end
