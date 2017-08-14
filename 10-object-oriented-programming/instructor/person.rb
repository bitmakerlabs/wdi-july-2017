class Person

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @awake  = true
    @health = 100

    @tail = false
  end

  # READER
  def first_name
    @first_name
  end

  # WRITER
  def first_name=(first_name)
    @first_name = first_name
  end

  # READER
  def last_name
    @last_name
  end

  # WRITER
  def last_name=(last_name)
    @last_name = last_name
  end

  # READER
  def tail
    @tail
  end

  # INSTANCE METHODS
  def full_name
    "#{ @first_name } #{ @last_name }"
  end

  def greetings
    if @awake && @health > 0
      "Hi, my name is #{ full_name }"
    else
      "Zzzzzz"
    end
  end

  def sleep
    @awake = false
  end

  def wake
    @awake = true
  end

  def mutate
    @tail = true
  end

end

fred = Person.new('Fred', 'Ngo')
mina = Person.new('Mina', 'Mikhail')
natalie = Person.new('Natalie', 'Black')

# puts fred.full_name
# puts fred.greetings
# puts mina.full_name
# puts mina.greetings
# puts natalie.full_name
# puts natalie.greetings


fred.sleep
puts fred.greetings
puts mina.greetings
puts natalie.greetings
fred.mutate

puts "Does fred have a tail? #{ fred.tail }"
puts "Does mina have a tail? #{ mina.tail }"
puts "Does natalie have a tail? #{ natalie.tail }"

puts "Fred's first name is: #{ fred.first_name }"
puts "Fred's last name is: #{ fred.last_name }"

puts "Mina's name is: #{ mina.full_name }"
mina.first_name = 'Joe'
puts "Mina's name is: #{ mina.full_name }"
