class PostsController < ApplicationController
  before_filter :find_lesson, :except => :index_all
  
  def index
    @posts = @lesson.posts
  end
  
  def index_all
    puts 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
    @posts = Post.all
  end

  def create
    @post = Post.new(params[:post])
    if (@lesson.posts << @post)
      redirect_to(lesson_url(@lesson))
    else
      render(:template => 'lessons/show', :locals => {:lesson => @lesson})
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to @lesson
  end
  
  private 
  
  def find_lesson
    @lesson_id = params[:lesson_id]
    return(redirect_to(lessons_url)) unless @lesson_id
    @lesson = Lesson.find(@lesson_id)
  end
end
