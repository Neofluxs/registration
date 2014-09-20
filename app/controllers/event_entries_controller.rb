class EventEntriesController < ApplicationController
  before_action :require_user
  def index
    @evententry = current_user.event_entries.all
    @event = current_user.events.all
  end
  def new
    @evententry = EventEntry.new
  end
  def create
    @evententry = current_user.event_entries.new(evententry_params)
      if @evententry.save
        redirect_to events_path, notice: 'Registered successfully'
      else
        render :new
      end
  end
  def edit
    @evententry = EventEntry.find(params[:id])
  end
  def evententry_params
    params.require(:event_entry).permit(:first_name, :middle_name, :last_name, :name_on_certificate, :accomodation, :paid, :event_id)
  end
end
