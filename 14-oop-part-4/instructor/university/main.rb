require_relative 'professor'
require_relative 'student'

albert_einstein = Professor.new('Albert', 'Einstein', 'Physics')

joe_bloggs = Student.new('Joe', 'Bloggs')
mary_wong  = Student.new('Mary', 'Wong')
jim_smith  = Student.new('Jim', 'Smith')
john_doe   = Person.new('John', 'Doe')

cohort = []
cohort << joe_bloggs
cohort << mary_wong
cohort << jim_smith
cohort << john_doe

albert_einstein.teach(cohort)
albert_einstein.teach(cohort)
albert_einstein.teach(cohort)
albert_einstein.teach(cohort)

private_lesson = []
private_lesson << jim_smith
albert_einstein.teach(private_lesson)

joe_bloggs.slack

puts "#{ joe_bloggs.full_name }'s Knowledge is at: #{ joe_bloggs.knowledge_level }"
puts "#{ mary_wong.full_name }'s Knowledge is at: #{ mary_wong.knowledge_level }"
puts "#{ jim_smith.full_name }'s Knowledge is at: #{ jim_smith.knowledge_level }"
