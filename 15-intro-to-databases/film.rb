class Film
  @@library = []
  @@id = 1;

  def initialize(options)
    @title = options[:title]
    @country = options[:country]
    @genre = options[:genre]
    @rating = options[:rating]
    @description = options[:description]
    @id = @@id

    @@id += 1
  end

  def id
    @id
  end

  def title
    @title
  end

  def title=(new_title)
    @title = new_title
  end

  def country
    @country
  end

  def country=(new_country)
    @country = new_country
  end

  def genre
    @genre
  end

  def genre=(new_genre)
    @genre = new_genre
  end

  def rating
    @rating
  end

  def rating=(new_rating)
    @rating = new_rating
  end

  def description
    @description
  end

  def description=(new_description)
    @description = new_description
  end

  def self.create(options)
    film = self.new(options)
    @@library << film
    return film
  end

  def self.all
    return @@library
  end

end
