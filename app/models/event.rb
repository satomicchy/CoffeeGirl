class Event < ActiveRecord::Base
  has_many :reports
  belongs_to :coffeespot
end
