require 'test_helper'

class AssociatedRisksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get associated_risks_index_url
    assert_response :success
  end

  test "should get show" do
    get associated_risks_show_url
    assert_response :success
  end

  test "should get new" do
    get associated_risks_new_url
    assert_response :success
  end

  test "should get create" do
    get associated_risks_create_url
    assert_response :success
  end

  test "should get edit" do
    get associated_risks_edit_url
    assert_response :success
  end

  test "should get update" do
    get associated_risks_update_url
    assert_response :success
  end

  test "should get destroy" do
    get associated_risks_destroy_url
    assert_response :success
  end

end
