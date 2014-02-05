require 'test_helper'

class IdeaItemsControllerTest < ActionController::TestCase
  setup do
    @idea_item = idea_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:idea_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create idea_item" do
    assert_difference('IdeaItem.count') do
      post :create, idea_item: { idea_id: @idea_item.idea_id, rank: @idea_item.rank, title: @idea_item.title }
    end

    assert_redirected_to idea_item_path(assigns(:idea_item))
  end

  test "should show idea_item" do
    get :show, id: @idea_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @idea_item
    assert_response :success
  end

  test "should update idea_item" do
    patch :update, id: @idea_item, idea_item: { idea_id: @idea_item.idea_id, rank: @idea_item.rank, title: @idea_item.title }
    assert_redirected_to idea_item_path(assigns(:idea_item))
  end

  test "should destroy idea_item" do
    assert_difference('IdeaItem.count', -1) do
      delete :destroy, id: @idea_item
    end

    assert_redirected_to idea_items_path
  end
end
