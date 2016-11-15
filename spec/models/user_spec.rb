require 'spec_helper'

describe User do

  before { @user = User.new(email: "user@example.com", first_name: "Example First Name", 
  							last_name: "Example Last Name", admin: false, 
  							password: "aaaaa", password_confirmation: "password" ) }

  subject { @user }

  
  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:admin) }  

  #describe "when password is not present" do
  #  before do
  #    @user = User.new(email: "user@example.com", first_name: "Example First Name", 
  #    				   last_name: "Example Last Name", admin: false,
  #                     password: " ", password_confirmation: " ")
  #  end
  #  it { should_not be_valid }
  #end

  describe "when password doesn't match confirmation" do
    before { @user.password_confirmation = "mismatch" }
    it { should_not be_valid }
  end

  it { should respond_to(:authenticate) }

  describe "with a password that's too short" do
    before { @user.password = @user.password_confirmation = "a" * 5 }
    it { should be_invalid }
  end

  describe "return value of authenticate method" do
    before { @user.save }
    let(:found_user) { User.find_by(email: @user.email) }

    describe "with valid password" do
      it { should eq found_user.authenticate(@user.password) }
    end

    describe "with invalid password" do
      let(:user_for_invalid_password) { found_user.authenticate("invalid") }

      it { should_not eq user_for_invalid_password }
      specify { expect(user_for_invalid_password).to be_false }
    end
  end

end