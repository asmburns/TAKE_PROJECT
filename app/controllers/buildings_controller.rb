class BuildingsController < ApplicationController


def get_all 
  @buildings = []
  @buildings = Building.all
  render json:@buildings
end  
  
  
end
