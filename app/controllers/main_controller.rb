class MainController < ApplicationController

  def index
    @num_lessons = Lesson.count
    @most_recent_lesson = Lesson.find(:first, :order => 'created_at DESC')
    @tags = Lesson.tag_counts
  end

end
