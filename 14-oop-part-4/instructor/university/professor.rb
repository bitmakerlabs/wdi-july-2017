require_relative 'person'

class Professor < Person

  def initialize(first_name, last_name, field_of_expertise)
    super(first_name, last_name)
    @field_of_expertise = field_of_expertise
  end

  def full_name
    "Professor #{ super }"
  end

  def teach(students)
    students.each { |student| student.learn }
  end

end
