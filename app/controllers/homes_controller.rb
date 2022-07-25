class HomesController < ApplicationController

  def index
    @homes = Home.all

  end





  def menu
    @home = Home.new(home_params)
    # @home = Home.find(params[:id])
  end





end