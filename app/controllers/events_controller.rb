class EventsController < ApplicationController
 skip_before_action :authorized, only: [:index, :show]

  # GET /events
  def index
    @events = Event.all

    render json: @events
  end

  # GET /events/1
  def show
    event = Event.find(params[:id])
    if event
    render json: event
    else
      render json: {error: "No such event"}, status: :not_found
    end
  end

  # POST /events
  def create
    @event = Event.new(event_params)

    if @event.save
      render json: @event, status: :created, location: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:event_name, :event_date, :event_location, :event_description, :poster_url, :event_price, :total_tickets, :start_time, :end_time, :contact, :age_restriction, :ticket_info, :lineup, :category)
    end
end
