class Track < ApplicationRecord

  SHORT = 180000
  LONG  = 360000

  scope :starts_with, -> (char) { where('name ILIKE ?', "#{ char }%") }
  scope :short, -> { shorter_than(SHORT) }
  scope :long, -> { longer_than_or_equal_to(LONG) }
  scope :medium, -> { longer_than_or_equal_to(SHORT).shorter_than(LONG) }
  scope :shorter_than, -> (milliseconds) { where('milliseconds < ?', milliseconds) }
  scope :longer_than_or_equal_to, -> (milliseconds) { where('milliseconds >= ?', milliseconds) }

  scope :most_recent_scope, -> (limit) { order(created_at: :desc).limit(limit) }

  def self.most_recent_method(limit)
    if limit.present?
      order(created_at: :desc).limit(limit)
    else
      none
    end
  end

end
