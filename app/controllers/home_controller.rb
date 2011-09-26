class HomeController < ApplicationController
  def index
  	@posts = Post.latest

  	respond_to do |format|
  		format.html 
  	end
  end

end
