require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase

  def test_restaurant_is_invalid_without_name
    # arrange
    restaurant = Restaurant.new(opening_hour: 10, closing_hour: 23)

    # act
    is_it_valid = restaurant.valid?

    # assert
    assert_equal(false, is_it_valid)
  end

  def test_restaurant_is_invalid_without_opening_hour
    # arrange
    new_restaurant = Restaurant.new(name: "Chez Bitmaker", closing_hour: 23)

    # act
    is_it_valid = new_restaurant.valid?

    # assert (expected, actual)
    assert_equal(false, is_it_valid)
  end

  def test_restaurant_is_invalid_without_closing_hour
    # arrange
    new_restaurant = Restaurant.new(name: "Chez Bitmaker", opening_hour: 9)

    # act
    new_restaurant.save



    # assert(!new_restaurant.valid?)
    # or
    # refute(new_restaurant.valid?)
    # or
    assert(new_restaurant.errors.any?)
  end

   def test_restaurant_is_unavailable_in_the_past
     # arrange
     restaurant = Restaurant.new(name: "Chez Bitmaker", opening_hour: 10, closing_hour: 22)
     datetime_in_past = DateTime.new(2017,01,01)

     # act
     result = restaurant.available?(datetime_in_past)

     # assert
     assert_equal(false, result)
   end
  #
  # def test_restaurant_is_unavailable_before_opening
  # end
  #
  # def test_restaurant_is_unavailable_at_closing_time
  # end
  #
  # def test_restaurant_is_unavailable_past_closing_time
  # end
  #
  # def test_restaurant_is_unavailable_when_full
  # end
  #
  # def test_restaurant_is_available_when_under_capacity_during_opening_hours
  # end
  #
  # def test_restaurant_is_available_when_under_capacity_later_same_day
  # end
  #
  # def test_restaurant_is_available_when_under_capacity_at_opening
  # end

end
