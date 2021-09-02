class HomesController < ApplicationController

  def top
    @posts = Post.all
  end

  def index
  end


end
