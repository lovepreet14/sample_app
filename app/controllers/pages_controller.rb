class PagesController < ApplicationController
  def home
  	@title = "Home"
  end

  def contac
  	@title = "Contact"
  end

  def about
  	@title = "About"
  end
end
