class GetStatsController < ApplicationController
  
  
def get_stats
  
  @player = Player.where(username:params[:username]).first
  
  puts @player
  render json:{player: @player} 
 
end
  
  
end
