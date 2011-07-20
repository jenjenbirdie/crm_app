require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  setup do
    @company = companies(:one)
	@update = {
		:companyName => 'Unicorn Tech',
		:companyType => 'Parent',
		:customerType => 'Customer',
		:industry => 'Software',
		:tinNo => '222-4444-999',
		:vip => 'Low',
		:description => 'This company is doing really well.'		
	}
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post :create, :company => @update
    end

    assert_redirected_to company_path(assigns(:company))
  end

  test "should show company" do
    get :show, :id => @company.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @company.to_param
    assert_response :success
  end

  test "should update company" do
    put :update, :id => @company.to_param, :company => @update
    assert_redirected_to company_path(assigns(:company))
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete :destroy, :id => @company.to_param
    end

    assert_redirected_to companies_path
  end
end
