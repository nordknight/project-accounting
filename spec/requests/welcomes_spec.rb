require 'spec_helper'

describe "Welcomes" do
  describe "Home page" do

    it "should have the content 'Greetings!'" do
      visit '/welcome/home'
      expect(page).to have_content('Greetings!')
    end
    it "should have the title 'Home'" do
      visit '/welcome/home'
      expect(page).to have_title("Project's Accounting | Home")
    end
  end
  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/welcome/help'
      expect(page).to have_content('Help')
    end
     it "should have the title 'Help'" do
      visit '/welcome/help'
      expect(page).to have_title("Project's Accounting | Help")
    end
  end
   describe "About page" do

    it "should have the content 'About'" do
      visit '/welcome/about'
      expect(page).to have_content('About')
    end

    it "should have the title 'About'" do
      visit '/welcome/about'
      expect(page).to have_title("Project's Accounting | About ")
    end
  end
end

