# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#INSTRUMENTS 

    puts "CREATE ALL" 
   
    building = Building.where(name: "MAIN").first
    unless building 
      Building.new(name: "MAIN", builld_time: 1,   level_requirement: 0, price: 50).save
    end


    building = Building.where(name: "SILENSOLOGY").first
    unless building 
      Building.new(name: "SILENSOLOGY", builld_time: 10,   level_requirement: 0, price: 70).save
    end
    
     
    building_silence = Building.where(name: "SILENSOLOGY").first
    building_main = Building.where(name: "MAIN").first
    
    building_requirement = BuildingRequirement.where(building_id: building_silence.id, req_building_id: building_main.id).first
    unless building_requirement 
      BuildingRequirement.new(building_id: building.id, req_building_id: building_main.id, building_level: 1).save
    end

    player = Player.where(username: "test@test.ru").first
    unless player 
      Player.new(username: "test@test.ru", nickname: "Тестовый",   level: 0, exp: 10, energy: 10, credits: 100).save
    end 
