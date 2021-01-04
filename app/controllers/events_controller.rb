class EventsController < ApplicationController
before_action :authenticate_user!
def index 
@events = current_user.events.all
end

def show
@event = Event.find(params[:id])
	end

def new
@event = Event.new
end

def create
@event = current_user.events.build(event_params)
 respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
end

def update

	end

private

def event_params
params.require(:event).permit(:strat_time, :end_time, :creator_id, :title, :description)
end

end