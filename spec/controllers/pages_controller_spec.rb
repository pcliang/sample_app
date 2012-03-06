require 'spec_helper'

describe PagesController do

  render_views  # added according to Listed 3.15

  before (:each) do       # added according to chap 3.4
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  describe "GET 'home'" do
    it "should have the right title" do     # Modified according to Listing 3.19
      get 'home'
      response.should have_selector("title",
               :content=>"Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  end
 
  describe "GET 'help'" do
    it "should have the right title" do   
      get 'help'
      response.should have_selector("title",
               :content=> @base_title + " | Help")
    end
  end


end
