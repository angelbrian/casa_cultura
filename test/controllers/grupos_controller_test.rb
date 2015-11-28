require 'test_helper'

class GruposControllerTest < ActionController::TestCase
  setup do
    @grupo = grupos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grupos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grupo" do
    assert_difference('Grupo.count') do
      post :create, grupo: { cupo: @grupo.cupo, dias: @grupo.dias, fecha_fin: @grupo.fecha_fin, fecha_inicio: @grupo.fecha_inicio, hora_fin: @grupo.hora_fin, hora_inicio: @grupo.hora_inicio, id_grupo: @grupo.id_grupo, nivel: @grupo.nivel, semestre: @grupo.semestre, taller_id: @grupo.taller_id }
    end

    assert_redirected_to grupo_path(assigns(:grupo))
  end

  test "should show grupo" do
    get :show, id: @grupo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grupo
    assert_response :success
  end

  test "should update grupo" do
    patch :update, id: @grupo, grupo: { cupo: @grupo.cupo, dias: @grupo.dias, fecha_fin: @grupo.fecha_fin, fecha_inicio: @grupo.fecha_inicio, hora_fin: @grupo.hora_fin, hora_inicio: @grupo.hora_inicio, id_grupo: @grupo.id_grupo, nivel: @grupo.nivel, semestre: @grupo.semestre, taller_id: @grupo.taller_id }
    assert_redirected_to grupo_path(assigns(:grupo))
  end

  test "should destroy grupo" do
    assert_difference('Grupo.count', -1) do
      delete :destroy, id: @grupo
    end

    assert_redirected_to grupos_path
  end
end
