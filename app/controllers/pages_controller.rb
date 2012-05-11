class PagesController < ApplicationController
  def home
    @virtues = Virtue.all
  end
end
