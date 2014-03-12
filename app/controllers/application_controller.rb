class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :get_future_events

  def get_future_events
  	@future_events = Event.future_events.limit(15).sort! {|a, b| a.date <=> b.date }
  end
end
