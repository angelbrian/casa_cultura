require 'test_helper'

class GroupsControllerTest < ActionController::TestCase
  setup do
    @group = groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group" do
    assert_difference('Group.count') do
      post :create, group: { clave_grupo: @group.clave_grupo, cupo: @group.cupo, dias: @group.dias, fecha_fin: @group.fecha_fin, fecha_inicio: @group.fecha_inicio, hora_fin: @group.hora_fin, hora_inicio: @group.hora_inicio, nivel: @group.nivel, semestre: @group.semestre, taller_id: @group.taller_id }
    end

    assert_redirected_to group_path(assigns(:group))
  end

  test "should show group" do
    get :show, id: @group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group
    assert_response :success
  end

  test "should update group" do
    patch :update, id: @group, group: { clave_grupo: @group.clave_grupo, cupo: @group.cupo, dias: @group.dias, fecha_fin: @group.fecha_fin, fecha_inicio: @group.fecha_inicio, hora_fin: @group.hora_fin, hora_inicio: @group.hora_inicio, nivel: @group.nivel, semestre: @group.semestre, taller_id: @group.taller_id }
    assert_redirected_to group_path(assigns(:group))
  end

  test "should destroy group" do
    assert_difference('Group.count', -1) do
      delete :destroy, id: @group
    end

    assert_redirected_to groups_path
  end
end
