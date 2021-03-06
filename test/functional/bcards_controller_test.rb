require 'test_helper'

class BcardsControllerTest < ActionController::TestCase
  setup do
    @bcard = bcards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bcards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bcard" do
    assert_difference('Bcard.count') do
      post :create, bcard: { city: @bcard.city, company: @bcard.company, contact_email: @bcard.contact_email, contact_name: @bcard.contact_name, contact_pos: @bcard.contact_pos, contact_tel: @bcard.contact_tel, desc: @bcard.desc, phone: @bcard.phone, state: @bcard.state, website: @bcard.website }
    end

    assert_redirected_to bcard_path(assigns(:bcard))
  end

  test "should show bcard" do
    get :show, id: @bcard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bcard
    assert_response :success
  end

  test "should update bcard" do
    put :update, id: @bcard, bcard: { city: @bcard.city, company: @bcard.company, contact_email: @bcard.contact_email, contact_name: @bcard.contact_name, contact_pos: @bcard.contact_pos, contact_tel: @bcard.contact_tel, desc: @bcard.desc, phone: @bcard.phone, state: @bcard.state, website: @bcard.website }
    assert_redirected_to bcard_path(assigns(:bcard))
  end

  test "should destroy bcard" do
    assert_difference('Bcard.count', -1) do
      delete :destroy, id: @bcard
    end

    assert_redirected_to bcards_path
  end
end
