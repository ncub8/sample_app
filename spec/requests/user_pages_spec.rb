require 'spec_helper'

describe "UserPages" do
 
 subject {page}

 describe "signup page" do
 	before {visit signup_path}

 	it { should have_selctor('h1', text: 'Sign up')}
 	it { should have_selctor('title', text: full_title('Sign up'))}
 end
end
