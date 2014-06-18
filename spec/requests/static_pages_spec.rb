require 'spec_helper'

describe "Static pages" do
 subject { page }

  describe "Home page" do
before { visit root_path }
 
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }	

  end
  describe "Projects page" do
 before { visit proj_path }
  it { should have_title(full_title('Projects')) }
  end
  
  describe "Favorites page" do
 before { visit fav_path }
   it { should have_title(full_title('Favorites')) }
  end
  
   describe "About page" do

   before { visit about_path }
   it { should have_title(full_title('About')) }
  end
end
