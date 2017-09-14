class Reservation < ActiveRecord::Base

  validates :people, :numericality => { :only_integer => true, :greater_than => 0, :less_than => 500 }

  belongs_to :restaurant
  belongs_to :user

end
