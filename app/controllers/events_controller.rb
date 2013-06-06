class EventsController < ApplicationController
  
     before_filter :signed_in_user
   
   def signed_in_user
     unless signed_in?
       store_location
       redirect_to root_path
     end
   end
   def store_location
     session[:return_to] = request.url
   end

  def new
    @event = Event.new
  end
  def index
    @event = Event.all
  end
  def create
    @event = Event.new(params[:event])
    @event.email = current_user.email
    @event.save
    redirect_to root_path
  end
  def update
    @event = Event.find(params[:id])
    @event.update_attributes(params[:test])
    redirect_to root_path
  end
  
  def edit
    @event = Event.find(params[:id])
  end
  
  def show
    #@event = Event.find(params[:id])
    @event = Event.find(params[:id])
    
    if @event.email == current_user.email
    else
      @event = Event.new
      @event.name = "You suck.  You cheater."
      end
    
    
    
  end


end
