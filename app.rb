require('sinatra')
require('sinatra/reloader')
require('./lib/place.rb')

get('/') do
  Place.clear()
  
  first_place = Place.new('New York', 'a big city', 1)
  first_place.save()
  second_place = Place.new('Portland', 'a medium city', 365)
  second_place.save()

  @places = Place.all()
  erb(:index)
end
