 class CalendarController < ApplicationController
 def index
 @month = (params[:month] || Time.zone.now.month).to_i
 @year = (params[:year] || Time.zone.now.year).to_i
 @shown_month = Date.civil(@year, @month)
 @event_strips = Event.where('id' => 19).event_strips_for_month(@shown_month)
 end
   
   def events
     @event = Event.all
   end   
   
   def add_event
    
   end
 end

