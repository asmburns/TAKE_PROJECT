class Building < ActiveRecord::Base
  
   has_many :building_upgrades
   has_many :building_properties
   has_many :building_requirements
   
end
