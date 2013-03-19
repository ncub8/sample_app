require 'spec_helper'

describe "UserPages" do
 
 subject {page}


 describe "profile page" do
 	let(:user) {FactoryGirl.create(:user)}
 	before {visit user_path(user)}

 	it {should have_selctor('h1', text: user.name)}
 	it {should have_selctor('title', text: user.name)}
end
end
