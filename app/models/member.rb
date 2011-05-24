class Member < ActiveRecord::Base
  has_many :reports

  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
end
