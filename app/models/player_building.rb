class PlayerBuilding < ActiveRecord::Base
  
  belongs_to :player
  belongs_to :building
  
end
