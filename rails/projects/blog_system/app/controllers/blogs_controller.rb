class BlogsController < ApplicationController
  
  def index

    @blog = Blog.all.sort
  end

  def show

    @blog = Blog.find(params[:id])
  end

  def new

    @blog_new = Blog.new(author: "Anonymous")
  end

  def create
    
    @blog_new = Blog.new(blog_params)

    if @blog_new.save
      
      redirect_to @blog_new
    else

      render :new, status: :unprocessable_entity
    end
  end

  def edit

    @blog_edit = Blog.find(params[:id])
  end

  def update

    @blog_edit = Blog.find(params[:id])

    if @blog_edit.update(blog_params)
      
      redirect_to @blog_edit
    else

      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @blog = Blog.find(params[:id])

    @blog.destroy

    redirect_to root_path, status: :see_other
  end

  def about
  end

  private
    def blog_params
      params.require(:blog).permit(:title, :body, :author)
    end
end
