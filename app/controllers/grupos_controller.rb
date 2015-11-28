class GruposController < ApplicationController
  before_action :set_grupo, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @grupos = Grupo.all
    respond_with(@grupos)
  end

  def show
    respond_with(@grupo)
  end

  def new
    @grupo = Grupo.new
    respond_with(@grupo)
  end

  def edit
  end

  def create
    @grupo = Grupo.new(grupo_params)
    @grupo.save
    respond_with(@grupo)
  end

  def update
    @grupo.update(grupo_params)
    respond_with(@grupo)
  end

  def destroy
    @grupo.destroy
    respond_with(@grupo)
  end

  private
    def set_grupo
      @grupo = Grupo.find(params[:id])
    end

    def grupo_params
      params.require(:grupo).permit(:id_grupo, :taller_id, :hora_inicio, :hora_fin, :nivel, :dias, :semestre, :fecha_inicio, :fecha_fin, :cupo)
    end
end
