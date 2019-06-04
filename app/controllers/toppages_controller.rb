class ToppagesController < ApplicationController
  def index
    @posts = Post.all
    @all_ranks = Post.find(Favorite.group(:post_id).order('count(post_id) desc').limit(3).pluck(:post_id))
  end
end
