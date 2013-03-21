# == Schema Information
#
# Table name: users
#
#  id              :integer         not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  password_digest :string(255)
#

require 'spec_helper'

describe User do
  before do 
    @user = User.new(name: "Bob Smith", email: "bob@smith.com", password: "foobar", password_confirmation: "foobar")
  end

  subject { @user }
  it {should respond_to(:name)}
  it {should respond_to(:email)}
  it {should respond_to(:password)}
  it {should respond_to(:password_confirmation)}
  it {should respond_to(:remember_token) }
  it {should respond_to(:authenticate) }
  
  it{should be_valid}

  describe "when password is not present" do
    before {@user.password = @user.password_confirmation = " "}
    it{should_not be_valid}
  end

  describe "when password doesnt match connfirmation" do
    before {@user.password_confirmation = "mismatch"}
    it {should_not be_valid}
  end

  describe "when password_confirmation is nil" do
    before {@user.password_confirmation = nil}
    it {should_not be_valid}
  end

  describe "when name is not present" do
  	before { @user.name = " " }
  	it{should_not be_valid}
  end	

  describe "when email is not present" do
  	before{@user.email = " " }
  	it {should_not be_valid}
  end

  describe "when name is too long" do
  	before {@user.name = "a" * 51 }
  	it{should_not be_valid}
  end

  describe "remember token" do
    before {@user.save}
    its (:remember_token) {should_not be_blank}
  end

end
