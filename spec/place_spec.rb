require('rspec')
require('place')

describe(Place) do
  describe('#description') do
    it("Lets you add a description") do
      test_place = Place.new("scrub the rhino")
      expect(test_place.description()).to(eq("scrub the rhino"))
    end
  end
end
