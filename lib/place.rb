class Place

  @@all_places = []

  define_method(:initialize) do |name, description, length_of_time|
    @name           = name
    @description    = description
    @length_of_time = length_of_time
  end

  define_method(:description) do
    @description
  end

  define_method(:name) do
    @name
  end

  define_method(:length_of_time) do
    @length_of_time
  end

  define_method(:save) do
    @@all_places.push(self)
  end

  define_singleton_method(:all) do
    @@all_places
  end

  define_singleton_method(:clear) do
    @@all_places = []
  end
end
