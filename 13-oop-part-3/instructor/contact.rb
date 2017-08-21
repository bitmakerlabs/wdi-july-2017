class Contact

  @@contacts = []
  @@next_id  = 1000

  def self.create(first_name, last_name, email, notes = 'N/A')
    new_contact = Contact.new(first_name, last_name, email, notes)
    @@contacts << new_contact
    new_contact
  end

  def self.all
    @@contacts
  end

  def self.find(id)
    # Exercise left to the student
    # Return specific contact
  end

  def initialize(first_name, last_name, email, notes = 'N/A')
    @first_name = first_name
    @last_name  = last_name
    @email      = email
    @notes      = notes

    @id = @@next_id
    @@next_id += 1
  end

  # READERS
  def id
    @id
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def email
    @email
  end

  def notes
    @notes
  end

  # WRITER
  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  def email=(email)
    @email = email
  end

  def notes=(notes)
    @notes = notes
  end

  # Instance Method
  def full_name
    "#{ first_name } #{ last_name }"
  end

end

#
# Object   | State                  | Behaviours
# ---------+------------------------+-----------------
# Class    | class variables (@@)   | class methods (def self)
# Instance | instance variables (@) | instance methods (def)
#
