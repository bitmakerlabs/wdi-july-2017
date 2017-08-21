require_relative 'superhero'

superman  = Kryptonian.new('Clark Kent')
supergirl = Kryptonian.new('Kara Danvers')

flash    = Speedster.new('Barry Allen')

batman  = BatPerson.new('Bruce Wayne')

# 10.times { superman.hit(flash) }
# puts "Is the Flash conscious? #{ flash.conscious? }"
#
# flash.rest
# puts "Is the Flash conscious? #{ flash.conscious? }"
#
# flash.take_hit(10)
