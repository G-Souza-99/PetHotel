class PagesController < ApplicationController
  def home
    @places = Place.all
  end
end
