class Track < ApplicationRecord

  SHORT = 180000
  LONG  = 360000

  validates :name, :composer, :milliseconds, :bytes, :unit_price, presence: true
  validates :bytes, :milliseconds, numericality: { greater_than: 0 }
  validates :unit_price, numericality: { greater_than: 0.0 }
  validate  :name_must_be_titleized

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

private

  def name_must_be_titleized
    return unless name.present?

    # Step 1: Check that the first char is upper case
    first_char = name[0]
    first_char_is_not_upcased = (first_char != first_char.upcase)

    # Step 2 If the first char is not upper case, add an error
    errors.add(:name, 'must be capitalized') if first_char_is_not_upcased
  end

end
