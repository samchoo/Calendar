class Event < ActiveRecord::Base
  has_event_calendar
  attr_accessible :email, :name

  end