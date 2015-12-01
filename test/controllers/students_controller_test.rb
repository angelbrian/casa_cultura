require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { apellido_materno: @student.apellido_materno, apellido_paterno: @student.apellido_paterno, curp: @student.curp, direccion: @student.direccion, fecha_de_nac: @student.fecha_de_nac, fecha_de_registro: @student.fecha_de_registro, nombre: @student.nombre, nombre_tutor: @student.nombre_tutor, sexo: @student.sexo, telefono: @student.telefono, telefono_tutor: @student.telefono_tutor, tipo_de_sangre: @student.tipo_de_sangre }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    patch :update, id: @student, student: { apellido_materno: @student.apellido_materno, apellido_paterno: @student.apellido_paterno, curp: @student.curp, direccion: @student.direccion, fecha_de_nac: @student.fecha_de_nac, fecha_de_registro: @student.fecha_de_registro, nombre: @student.nombre, nombre_tutor: @student.nombre_tutor, sexo: @student.sexo, telefono: @student.telefono, telefono_tutor: @student.telefono_tutor, tipo_de_sangre: @student.tipo_de_sangre }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
