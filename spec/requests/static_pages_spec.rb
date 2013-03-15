require 'spec_helper'

describe "StaticPages" do

<<<<<<< HEAD
  subject { page }

  shared_examples_for "all_static_pages" do
    it { should have_selector('h1', text: heading)}
    it { should have_selector('title', text: full_title(page_title))}
  end

  describe "Home Page" do
    before{ visit root_path}
    let(:heading) {'Sample App'}
    let(:page_title) {''}
    
    it_should_behave_like "all_static_pages"
    it {shoul_not have_selector 'title', text: '|Home'}	
  end

  describe "Help Page" do
    before{ visit help_path }

    it {should have_content('Help')}
    it {should have_selector('title', :text => '| Help')}
	   
  end

  describe "About Page" do
    before{ visit about_path }
    	it {should have_content('About US')}
    	it {should have_selector('title', :text => '| About')}
	end	

  describe "Contact Page" do
    before{visit contact_path}
    	it {should have_content('Contact')}
     	it {should have_selector('title', :text => '| Contact Us')}
    	
    end	

   it "should have the right links on layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title("About Us")
    click_link "Help"
  end   	
=======
	describe "Home Page" do

		it "should have the content 'Sample App'" do
			visit '/static_pages/home'
			page.should have_content('Sample App')
		end

		it "should have the right title" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => 'Ruby on Rails Sample App | Home')
		end
	end

	describe "Help Page" do
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			page.should have_content('Help')
		end

		it "should have the right title" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => 'Ruby on Rails Sample App | Help')
		end
	end

	describe "About page" do
		it "should have the content 'About Us" do
			visit '/static_pages/about'
			page.should have_content('About Us')
		end

		it "should have the right title" do
			visit '/static_pages/about'
			page.should have_selector('title', :text => 'Ruby on Rails Sample App | About Us')
		end
	end


>>>>>>> static-pages
end
