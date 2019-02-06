class ReservesController < ApplicationController

	def index
	  @room_reserves = Reserve.all
	end

	def new
	  @reserve = Reserve.new
	end

	def create
	  @room = Room.find(params[:room_id])
	  @room_reserve = Reserve.create(user_id: current_user.id, room_id: params[:room_id]) if @room.status == true
	end

	def show
      @room_reserve = Reserve.find(:id)
      @room = Room.find(@room_reserve.room_id)
	end

	def edit
	  @room_reserve = Reserve.find(:id)
      @room = Room.find(@room_reserve.room_id)
	end

	def update
	  @room_reserve = Reserve.find(:id)
      @room = Room.find(@room_reserve.room_id)
      @room.update_attributes(params[:room])
	end

	def destroy
	  @room_reserve = Reserve.find(:id)
	  if @room_reserve.destroy
        @room = Room.find(@room_reserve.room_id)
        @room.update_attributes(from_date: nil, to_date: nil, statu: true)
      end
	end

end
