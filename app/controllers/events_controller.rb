class EventsController < ApplicationController
before_action :authenticate_user!
def index 
 @events = Event.all.order('created_at Desc')
end
  def attend
    @event = Event.find(params[:id])
    current_user.events << @event
    redirect_to @event, notice: 'You have promised to attend this event.'
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

def destroy
@event = Event.find(params[:id])
@event.destroy
redirect_to root_path
end

private

def event_params
params.require(:event).permit(:start_time, :end_time, :title, :description)
end

end