class ApplicationController < ActionController::Base
   include SessionsHelper
  
  def counts(user)
    @count_posts = user.posts.count
    @count_favorites = user.favorites.count
  end
  
  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
end
