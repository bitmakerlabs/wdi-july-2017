class Restaurant < ActiveRecord::Base

  validates :name, :opening_hour, :closing_hour, presence: true

  belongs_to :category
  has_many :reservations

  def available?(datetime)
    return datetime > Time.now
  end

end
