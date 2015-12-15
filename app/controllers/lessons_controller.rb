class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @lessons = Lesson.all
    respond_with(@lessons)
  end

  def show
    respond_with(@lesson)
  end

  def new
    @lesson = Lesson.new
    respond_with(@lesson)
  end

  def edit
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.save
    respond_with(@lesson)
  end

  def update
    @lesson.update(lesson_params)
    respond_with(@lesson)
  end

  def destroy
    @lesson.destroy
    respond_with(@lesson)
  end

  private
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    def lesson_params
      params.require(:lesson).permit(:clave_taller, :profesor_id, :curso_id)
    end
end
