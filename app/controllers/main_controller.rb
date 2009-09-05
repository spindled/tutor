class MainController < ApplicationController

  def index
    @num_lessons = Lesson.count
  end

end
