class EventEntriesController < ApplicationController
  before_action :require_user
  def new
    @evententry = EventEntry.new
  end
  def create
    @evententry = current_user.evententry.new(evententry_params)
      if @evententry.save
        redirect_to events_path, notice: 'Registered successfully'
      else
        render :new
      end
  end
  def evententry_params
    params.require(:evententry).permit(:first_name, :middle_name, :last_name, :name_on_certificate, :accomodation, :paid)
  end
end
