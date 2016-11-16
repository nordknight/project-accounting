require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit '/users/new' }

    it { should have_content('Sign up') }
    it { should have_title(full_title('Sign up')) }
  end

  describe "remember token" do
    before { @user.save }
    its(:remember_token) { should_not be_blank }
  end
  
end