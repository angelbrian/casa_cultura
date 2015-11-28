require 'test_helper'

class ProfesorsControllerTest < ActionController::TestCase
  setup do
    @profesor = profesors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profesors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profesor" do
    assert_difference('Profesor.count') do
      post :create, profesor: { apellido_mat_prof: @profesor.apellido_mat_prof, apellido_pat_prof: @profesor.apellido_pat_prof, area_id: @profesor.area_id, nombre_prof: @profesor.nombre_prof, observaciones: @profesor.observaciones }
    end

    assert_redirected_to profesor_path(assigns(:profesor))
  end

  test "should show profesor" do
    get :show, id: @profesor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profesor
    assert_response :success
  end

  test "should update profesor" do
    patch :update, id: @profesor, profesor: { apellido_mat_prof: @profesor.apellido_mat_prof, apellido_pat_prof: @profesor.apellido_pat_prof, area_id: @profesor.area_id, nombre_prof: @profesor.nombre_prof, observaciones: @profesor.observaciones }
    assert_redirected_to profesor_path(assigns(:profesor))
  end

  test "should destroy profesor" do
    assert_difference('Profesor.count', -1) do
      delete :destroy, id: @profesor
    end

    assert_redirected_to profesors_path
  end
end
