class PagesController < ApplicationController
  def home
    @user = current_user
    @places = Place.all
  end
end
