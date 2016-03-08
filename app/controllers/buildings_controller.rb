class BuildingsController < ApplicationController


def checkConstruct(player, building)
 puts player.to_s
 puts building.to_s
  
  constructed_building = PlayerBuilding.where(player: player, building:building).first
  if constructed_building
     return false;  
  end
  
  if(player.level < building.level_requirement)
     return false;
  end    
     
  if(player.credits < building.price)
     return false;
  end  

   
  
  constructble = true;
  
  BuildingRequirement.where(building_id: building.id).each do |req|
        player_building = PlayerBuilding.where(player: player, building_id:req.req_building_id, building_level: req.building_level).first
        unless player_building
          constructble = false
        end
          
  end
  return constructble 
end

def checkUpgrade(player, building)
  
  constructed_building = PlayerBuilding.where(player: player.username, building:building.name).first
  
  if constructed_building
    bld_upgrage = BuildingUdgrade.where(building:building.name, building_level: constructed_building.building_level + 1).first
    
    if bld_upgrage
      return false
    else
      return false
    end
  end
  return false 
end



def get_buildings 
  
  @player = Player.where(username:params[:username]).first
  
  @result = {buildings: []}
  
  @buildings = []
  @buildings = Building.all
  
  @buildings.each do |bld|
    
     
     @result[:buildings].push({name:bld.name, constructble:checkConstruct(@player, bld), upgradeble: checkUpgrade(@player,bld)})
     
  
    end 
  
    render json:@result
  
  end  


  def build
    @player = Player.where(username:params[:username]).first
    @building = Building.where(name:params[:name]).first
    
    
    
    if @player && @building
      @player.player_buildings.each do |bld|
         if bld.name == @building.name
            render json:{result: false, msg: "Already Constructed"}
         end
      end
      
      PlayerBuilding.new({player:@player, building: @building, started_at: DateTime.now, building_level:1, under_construction: true}).save
      
    end
    
    
    
    
    render json:{result: true}
    
  end
   
  def upgrage
    @player = Player.where(username:params[:username]).first
  end  
  
end
