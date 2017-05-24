require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get static_pages_index_url
    assert_response :success
  end

  test "should get about_the_firm" do
    get static_pages_about_the_firm_url
    assert_response :success
  end

  test "should get partners" do
    get static_pages_partners_url
    assert_response :success
  end

  test "should get our_services" do
    get static_pages_our_services_url
    assert_response :success
  end

  test "should get industries" do
    get static_pages_industries_url
    assert_response :success
  end

  test "should get careers" do
    get static_pages_careers_url
    assert_response :success
  end

  test "should get knowledge_base" do
    get static_pages_knowledge_base_url
    assert_response :success
  end

  test "should get contact_us" do
    get static_pages_contact_us_url
    assert_response :success
  end

end
