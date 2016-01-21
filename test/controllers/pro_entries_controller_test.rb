require 'test_helper'

class ProEntriesControllerTest < ActionController::TestCase
  setup do
    @pro_entry = pro_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pro_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pro_entry" do
    assert_difference('ProEntry.count') do
      post :create, pro_entry: {  }
    end

    assert_redirected_to pro_entry_path(assigns(:pro_entry))
  end

  test "should show pro_entry" do
    get :show, id: @pro_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pro_entry
    assert_response :success
  end

  test "should update pro_entry" do
    patch :update, id: @pro_entry, pro_entry: {  }
    assert_redirected_to pro_entry_path(assigns(:pro_entry))
  end

  test "should destroy pro_entry" do
    assert_difference('ProEntry.count', -1) do
      delete :destroy, id: @pro_entry
    end

    assert_redirected_to pro_entries_path
  end
end
