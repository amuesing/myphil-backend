class SeatsController < ApplicationController

    def index
        @seats = Seat.all
        render json: @seats
    end

    def show
        @seat = Seat.all(params[:id])
        render json: @seat
    end

    def create
        @seat = Seat.create(seat_params)
        render json: @seat
    end

    def update
        @seat = Seat.find(params[:id])
        @seat.update(seat_params)
        render json: @seat
    end

    def destroy
        @seat = Seat.find(params[:id])
        @seat.destroy
        render json: @seat
    end

    private

    def seat_params
        params.permit(:section, :row, :number, :price, :is_taken?, :concert_id)
    end

end