class EventAttendeesController < ApplicationController
  def new
    @event = Event.find_by(id: params[:id])
  end

  def create
    @event = Event.find(event_attendees_params[:event_id])

    @user = User.find_by(name: event_attendees_params[:attendee])

    @event.attendees << @user if @user

    redirect_to events_path
  end

  private

    def event_attendees_params
      params.require(:event_attendee).permit(:event_id, :attendee)
    end
end
