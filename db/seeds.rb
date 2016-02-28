# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#INSTRUMENTS    
    building = Building.where(name: "MAIN").first
    unless building 
      Building.new(name: "MAIN", builld_time: 1,   level: 0).save
    end


    building = Building.where(name: "SILENSOLOGY").first
    unless building 
      Building.new(name: "SILENSOLOGY", builld_time: 10,   level: 0).save
    end
