require 'test_helper'

class OptionsControllerTest < ActionController::TestCase
  setup do
    @option = options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create option" do
    assert_difference('Option.count') do
      post :create, option: { contracts: @option.contracts, entrydate: @option.entrydate, entryfee: @option.entryfee, entryprice: @option.entryprice, exitdate: @option.exitdate, exitfee: @option.exitfee, exitprice: @option.exitprice, expiration: @option.expiration, isactive: @option.isactive, optiontype: @option.optiontype, side: @option.side, size: @option.size, strike: @option.strike, ticker: @option.ticker }
    end

    assert_redirected_to option_path(assigns(:option))
  end

  test "should show option" do
    get :show, id: @option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @option
    assert_response :success
  end

  test "should update option" do
    patch :update, id: @option, option: { contracts: @option.contracts, entrydate: @option.entrydate, entryfee: @option.entryfee, entryprice: @option.entryprice, exitdate: @option.exitdate, exitfee: @option.exitfee, exitprice: @option.exitprice, expiration: @option.expiration, isactive: @option.isactive, optiontype: @option.optiontype, side: @option.side, size: @option.size, strike: @option.strike, ticker: @option.ticker }
    assert_redirected_to option_path(assigns(:option))
  end

  test "should destroy option" do
    assert_difference('Option.count', -1) do
      delete :destroy, id: @option
    end

    assert_redirected_to options_path
  end
end
