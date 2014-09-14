class EventEntriesController < ApplicationController
  def new
    @evententry = EventEntry.new
  end
  def create
    @evententry = EventEntry.new(evententry_params)
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
