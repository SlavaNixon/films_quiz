class Film
  # title - Название фильма
  # director - Режисер фильма
  # year - Год, когда этот фильм был впервые показан

  attr_reader :title, :director, :year

  def initialize(title, director, year)
    @title = title
    @director = director
    @year = year
  end

  def to_s
    "Название: #{@title}. Режисер: #{director}. Год: #{@year}"
  end
end