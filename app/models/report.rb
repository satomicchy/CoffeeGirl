class Report < ActiveRecord::Base
  belongs_to :event
  belongs_to :member
end
