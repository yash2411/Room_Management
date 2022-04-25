class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @rooms = Room.new
  end

  def create
    @rooms = Room.new(params_rooms)
    @rooms.save
    flash[:success] = "Room created succesfully"
    redirect_to root_path
  end

  def edit
    @rooms = Room.find(params[:id])
  end

  def update
    @rooms = Room.find(params[:id])
    @rooms.update(params_rooms)
    redirect_to root_path
  end

  private
  def params_rooms
    params.require(:room).permit(:name, :room_type)
  end
end
