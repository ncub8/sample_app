require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => '| Home')
    end	
  end

    describe "Help Page" do
      it "works! (now write some real specs)" do
    	visit '/static_pages/help'
    	page.should have_content('Help')
      end	
	  it "should have the title 'Help'" do
	      visit '/static_pages/help'
	      page.should have_selector('title', :text => '| Help')
	    end

    end

    describe "About Page" do
    	it "works, holy crap!" do
    		visit '/static_pages/about'
    		page.should have_content('About US')
    	end
    	it "should have the title 'About'" do
	      visit '/static_pages/about'
	      page.should have_selector('title', :text => '| About')
	    end
    end	

    describe "Contact Page" do
    	it "Contact Page Works" do
    		visit '/static_pages/contact'
    		page.should have_content('Contact')
    	end
    	it "has the title Contact Us" do
    	  visit '/static_pages/contact'
    	  page.should have_selector('title', :text => '| Contact Us')
    	end
    end	  	
end
