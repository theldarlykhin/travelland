require 'test_helper'

class TourProgramsControllerTest < ActionController::TestCase
  setup do
    @tour_program = tour_programs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tour_programs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tour_program" do
    assert_difference('TourProgram.count') do
      post :create, tour_program: { program_details: @tour_program.program_details, title: @tour_program.title }
    end

    assert_redirected_to tour_program_path(assigns(:tour_program))
  end

  test "should show tour_program" do
    get :show, id: @tour_program
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tour_program
    assert_response :success
  end

  test "should update tour_program" do
    patch :update, id: @tour_program, tour_program: { program_details: @tour_program.program_details, title: @tour_program.title }
    assert_redirected_to tour_program_path(assigns(:tour_program))
  end

  test "should destroy tour_program" do
    assert_difference('TourProgram.count', -1) do
      delete :destroy, id: @tour_program
    end

    assert_redirected_to tour_programs_path
  end
end
