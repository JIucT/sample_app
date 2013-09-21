require 'spec_helper'

describe "Static pages" do

	let(:title) { "Ruby on Rails Tutorial Sample App | " }

######################################
  describe "Home page" do

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/help'
      expect(page).not_to have_title('| Home')
    end


    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  end

######################################
  describe "Help page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    
    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("#{title}Help")
    end
  end

######################################
  describe "Contact page" do
  	it "should have the right title" do
  		visit '/static_pages/contact'
  		expect(page).to have_title("#{title}Contact")
  	end
  end

######################################
  describe "About page" do
  	it "should have the right title" do
  	  visit '/static_pages/about'
  	  expect(page).to have_title("#{title}About")
  	end

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end
end