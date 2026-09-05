class RegistrationsController < ApplicationController

  def index
    @events = Event.find(params[:event_id])
    @registrations = @events.registrations
  end
end
