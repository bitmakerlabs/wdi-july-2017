require 'minitest/autorun'
require 'minitest/pride'
require_relative 'temperature.rb'

class TestTemperature < MiniTest::Test
   # tests go in here

   def test_c_to_f_positive
     expected_value = 50
     actual_value = c_to_f(10)

     assert_equal(expected_value, actual_value)
   end

   def test_f_to_c_positive
     expected_value = 10
     actual_value = f_to_c(50)

     assert_equal(expected_value, actual_value)
   end

   def test_f_to_c_negative

     assert_equal(-20, f_to_c(-4))
   end

   def test_f_to_c_freezing
     celcius = 0
     return_value = f_to_c(32)

     assert_equal(celcius, return_value)
   end
end
