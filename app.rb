require('sinatra')
require('sinatra/reloader')
require('./lib/place.rb')

get('/') do


  @places = Place.all()
  erb(:index)
end


post('/places') do
  name           = params.fetch("location")
  description    = params.fetch("Description")
  length_of_time = params.fetch("Length")

  @place = Place.new(name, description, length_of_time)
  @place.save()
  erb(:places)
end
