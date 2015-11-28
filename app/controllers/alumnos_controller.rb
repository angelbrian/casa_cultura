class AlumnosController < ApplicationController
  before_action :set_alumno, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @alumnos = Alumno.all
    respond_with(@alumnos)
  end

  def show
    respond_with(@alumno)
  end

  def new
    @alumno = Alumno.new
    respond_with(@alumno)
  end

  def edit
  end

  def create
    @alumno = Alumno.new(alumno_params)
    @alumno.save
    respond_with(@alumno)
  end

  def update
    @alumno.update(alumno_params)
    respond_with(@alumno)
  end

  def destroy
    @alumno.destroy
    respond_with(@alumno)
  end

  private
    def set_alumno
      @alumno = Alumno.find(params[:id])
    end

    def alumno_params
      params.require(:alumno).permit(:curp, :nombre, :apellido_paterno, :apellido_materno, :sexo, :direccion, :telefono, :fecha_de_registro, :tipo_de_sangre, :nombre_tutor, :telefono_tutor)
    end
end
