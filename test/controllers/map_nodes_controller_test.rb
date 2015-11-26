require 'test_helper'

class MapNodesControllerTest < ActionController::TestCase
  setup do
    @map_node = map_nodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:map_nodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create map_node" do
    assert_difference('MapNode.count') do
      post :create, map_node: { audio_path: @map_node.audio_path, content: @map_node.content, degree: @map_node.degree, path: @map_node.path, rating: @map_node.rating, title: @map_node.title }
    end

    assert_redirected_to map_node_path(assigns(:map_node))
  end

  test "should show map_node" do
    get :show, id: @map_node
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @map_node
    assert_response :success
  end

  test "should update map_node" do
    patch :update, id: @map_node, map_node: { audio_path: @map_node.audio_path, content: @map_node.content, degree: @map_node.degree, path: @map_node.path, rating: @map_node.rating, title: @map_node.title }
    assert_redirected_to map_node_path(assigns(:map_node))
  end

  test "should destroy map_node" do
    assert_difference('MapNode.count', -1) do
      delete :destroy, id: @map_node
    end

    assert_redirected_to map_nodes_path
  end
end
