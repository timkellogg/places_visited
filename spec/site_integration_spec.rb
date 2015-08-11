require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application

  describe('Places path site', {:type => :feature}) do
    it('Add locations, description and length of time') do
      visit ('/')
      fill_in ("location" :with "Disneyland")
      fill_in ("Description" :with "Happiest Place On Earth")
      fill_in ("Length" :with "5")
      click_button = "Add Destination"
      expect(page).to have_content("Location added successfully")
      expect(page).to have_css("a")
    end
  end
