require 'spec_helper'

describe "StaticPages" do

  describe "Home pages" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "shoule have the right title" do
      visit '/static_pages/home'
      puts "the title is #{(page).title}"
      expect(page).to have_title("Ruby on Rails | Home")
    end
  end

  describe "Help page" do

    it "should have the content 'help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end

end
