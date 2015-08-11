require('rspec')
require('place')

describe(Place) do

  before() do
    @test_place = Place.new("Disneyland", "happiest place on earth", 4)
    @test_place.save()
  end

  describe('#description') do
    it("Lets you add a description") do
      # test_place = Place.new("scrub the rhino")
      expect(@test_place.description()).to(eq("happiest place on earth"))
    end
  end

  describe('#name') do
    it('returns the name of the place') do
      expect(@test_place.name()).to(eq("Disneyland"))
    end
  end

  describe('#length_of_time') do
    it('returns the length of time at the place') do
      expect(@test_place.length_of_time()).to(eq(4))
    end
  end



end
