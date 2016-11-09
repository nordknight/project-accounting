require 'spec_helper'

describe "Welcomes" do
  describe "Home page" do

    it "should have the content 'Greetings!'" do
      visit '/welcome/home'
      expect(page).to have_content('Greetings!')
    end
  end
end

