class BookingsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

  def index
    render json: Booking.all
  end
def create
  booking = Booking.create(booking_params)
  if booking.valid?
    render json: booking, status: :created
  else
render json: {error:"Booking not made"}, status: :unprocessable_entity
  end
end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_params
      params.permit(:user_id, :event_id, :total, :tickets)
    end
end
