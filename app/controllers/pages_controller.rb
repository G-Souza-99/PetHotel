class PagesController < ApplicationController
  def home
    @places = policy_scope(Place).order(created_at: :desc)
  end
end
