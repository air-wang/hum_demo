require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
  	it "should have the content 'sample app'" do
  		visit '/static_pages/home'
  		page.should have_content('Sample App')
  	end

    it "should have the right title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector("title",:text => "| Home")
    end
  end

  describe "Help Page" do
  	it "should have the content 'help'" do
  		visit '/static_pages/help'
  		page.should have_content('Help')
  	end

    it "should have the right title 'help'" do
      visit '/static_pages/help'
      page.should have_selector("title", :text => "| Help")
    end
  end

  describe "About Page" do
    it "should have the content 'about'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end

    it "should have the right title 'about'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text =>'| About Us')
    end
  end


end
