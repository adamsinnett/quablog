class PostsController < ApplicationController
  def index
    redirect_to :root
  end
  
  def new
    @post = Post.new

    respond_to do |format|
      format.html
    end
  end

  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to(@post, :notice => "Post was successfully created") }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def edit
    @post = Post.find(params[:id])
 
    respond_to do |format|
        format.html 
    end
  end

  def update
    @post = Post.find(params[:id])
 
    respond_to do |format|
     if @post.update_attributes(params[:post])
       format.html  { redirect_to(@post,
                      :notice => 'Post was successfully updated.') }
      else
        format.html  { render :action => "edit" }
      end
    end
  end

  def delete
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html
    end
  end

end
