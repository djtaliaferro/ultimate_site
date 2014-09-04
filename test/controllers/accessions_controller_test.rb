require 'test_helper'

class AccessionsControllerTest < ActionController::TestCase
  setup do
    @accession = accessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accession" do
    assert_difference('Accession.count') do
      post :create, accession: { accession_number: @accession.accession_number, collection_date: @accession.collection_date, date_received: @accession.date_received }
    end

    assert_redirected_to accession_path(assigns(:accession))
  end

  test "should show accession" do
    get :show, id: @accession
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accession
    assert_response :success
  end

  test "should update accession" do
    patch :update, id: @accession, accession: { accession_number: @accession.accession_number, collection_date: @accession.collection_date, date_received: @accession.date_received }
    assert_redirected_to accession_path(assigns(:accession))
  end

  test "should destroy accession" do
    assert_difference('Accession.count', -1) do
      delete :destroy, id: @accession
    end

    assert_redirected_to accessions_path
  end
end
