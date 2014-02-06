require 'test_helper'

class IdeasInProjectsControllerTest < ActionController::TestCase
  setup do
    @ideas_in_project = ideas_in_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ideas_in_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ideas_in_project" do
    assert_difference('IdeasInProject.count') do
      post :create, ideas_in_project: { idea_id: @ideas_in_project.idea_id, project_id: @ideas_in_project.project_id }
    end

    assert_redirected_to ideas_in_project_path(assigns(:ideas_in_project))
  end

  test "should show ideas_in_project" do
    get :show, id: @ideas_in_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ideas_in_project
    assert_response :success
  end

  test "should update ideas_in_project" do
    patch :update, id: @ideas_in_project, ideas_in_project: { idea_id: @ideas_in_project.idea_id, project_id: @ideas_in_project.project_id }
    assert_redirected_to ideas_in_project_path(assigns(:ideas_in_project))
  end

  test "should destroy ideas_in_project" do
    assert_difference('IdeasInProject.count', -1) do
      delete :destroy, id: @ideas_in_project
    end

    assert_redirected_to ideas_in_projects_path
  end
end
