FactoryGirl.define do 
	factory :user do
		name "John Moore"
		email "john@ncub8.com"
		password "foobar"
		password_confirmation "foobar"
	end
end