#require 'spec_helper'

describe "StaticPages" do

 

  describe "Home Page" do

  	before { visit root_path }
   it "should have h1 sample app" do
   	
   	page.should have_selector('h1', text: 'Sample App')
   end

   it "should have the base title" do
   	
   	page.should have_selector('title', text: "Ruby on Rails Sample App")
   end

   it "should not have a custom page title" do
   	
   	page.should_not have_selector('title', text: "| Home")
   end

    	
  end

  describe "Help Page" do
    it "should have the h1 help" do
    	visit help_path
    	page.should have_selector('h1', text: "Help")
    end

    it "should have the title Help" do
    	visit help_path
    	page.should have_selector('title', text: "Ruby on Rails Sample App | Help")
    end
	   
  end

  describe "About Page" do
    
    it "should have the h1 About" do
    	visit about_path
    	page.should have_selector('hi', text: "About Us")
    end

    it "should have the title About Us" do
    	visit about_path
    	page.should have_selector('title', text: "Ruby on Rails Sample App | About Us")
    end


  end	

  describe "Contact Page" do
    
    it "should have the h1 Contact" do
    	visit contact_path
    	page.should have_selector('h1', text: "Contact")
    end

    it "shoud have the title Contact Us" do
    	visit contact_path
    	page.should have_selector('title', text: "Ruby on Rails Sample App | Contact Us")
    end
end

end
