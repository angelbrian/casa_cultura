require 'test_helper'

class AlumnosControllerTest < ActionController::TestCase
  setup do
    @alumno = alumnos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alumnos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alumno" do
    assert_difference('Alumno.count') do
      post :create, alumno: { apellido_materno: @alumno.apellido_materno, apellido_paterno: @alumno.apellido_paterno, curp: @alumno.curp, direccion: @alumno.direccion, fecha_de_registro: @alumno.fecha_de_registro, nombre: @alumno.nombre, nombre_tutor: @alumno.nombre_tutor, sexo: @alumno.sexo, telefono: @alumno.telefono, telefono_tutor: @alumno.telefono_tutor, tipo_de_sangre: @alumno.tipo_de_sangre }
    end

    assert_redirected_to alumno_path(assigns(:alumno))
  end

  test "should show alumno" do
    get :show, id: @alumno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alumno
    assert_response :success
  end

  test "should update alumno" do
    patch :update, id: @alumno, alumno: { apellido_materno: @alumno.apellido_materno, apellido_paterno: @alumno.apellido_paterno, curp: @alumno.curp, direccion: @alumno.direccion, fecha_de_registro: @alumno.fecha_de_registro, nombre: @alumno.nombre, nombre_tutor: @alumno.nombre_tutor, sexo: @alumno.sexo, telefono: @alumno.telefono, telefono_tutor: @alumno.telefono_tutor, tipo_de_sangre: @alumno.tipo_de_sangre }
    assert_redirected_to alumno_path(assigns(:alumno))
  end

  test "should destroy alumno" do
    assert_difference('Alumno.count', -1) do
      delete :destroy, id: @alumno
    end

    assert_redirected_to alumnos_path
  end
end
