class Reservation < ActiveRecord::Base
  include ActionView::Helpers::TextHelper # for pluralize method, below

  validates :people, :numericality => { :only_integer => true, :greater_than => 0, :less_than => 500 }
  validate :restaurant_must_be_within_capacity

  belongs_to :restaurant
  belongs_to :user

  def restaurant_must_be_within_capacity
    unless self.restaurant.is_available?(self.begin_time, self.people)
      errors.add(:begin_time, "is not available for " + pluralize(self.people, "person"))
    end
  end
end
