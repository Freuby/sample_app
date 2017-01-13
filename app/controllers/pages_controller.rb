class PagesController < ApplicationController

  def home
    @titre = "Accueil"
    if sign_in?
      @micropost = Micropost.new
      @feed_items = current_user.feed.paginate(:page => params[:page], :per_page => 7)
    end
  end

  def contact
    @titre = "Contact"
  end

  def about
    @titre = "A Propos"
  end

  def help
    @titre = "Aide"
  end

  def signup
    @titre = "Signup"
  end
end
