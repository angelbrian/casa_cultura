class ProfesorsController < ApplicationController
  before_action :set_profesor, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @profesors = Profesor.all
    respond_with(@profesors)
  end

  def show
    respond_with(@profesor)
  end

  def new
    @profesor = Profesor.new
    respond_with(@profesor)
  end

  def edit
  end

  def create
    @profesor = Profesor.new(profesor_params)
    @profesor.save
    respond_with(@profesor)
  end

  def update
    @profesor.update(profesor_params)
    respond_with(@profesor)
  end

  def destroy
    @profesor.destroy
    respond_with(@profesor)
  end

  private
    def set_profesor
      @profesor = Profesor.find(params[:id])
    end

    def profesor_params
      params.require(:profesor).permit(:nombre_prof, :apellido_pat_prof, :apellido_mat_prof, :observaciones, :area_id)
    end
end
