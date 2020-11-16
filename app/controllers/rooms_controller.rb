class RoomsController < ApplicationController
  protect_from_forgery

  def index
    @rooms = Room.all
  end

  def new
    @rooms = Room.all
  end

  def create
    Room.create(room_params)
  end

  private
  def room_params
    params.permit(:room_no)
  end

end
