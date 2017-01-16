require 'test_helper'

class PagesControllerTest < ActionController::TestCase
 test "should get company_health" do
   get :company_health
   assert_response :success
 end

  test "should get contact_us" do
   get :contact_us
   assert_response :success
 end

 test "should get home" do
   get :home
   assert_response :success
 end

 test "should get legal" do
   get :legal
   assert_response :success
 end

  test "should get our_purpose" do
   get :our_purpose
   assert_response :success
 end

 test "should get privacy_policy" do
   get :privacy_policy
   assert_response :success
 end

 test "should get story" do
   get :story
   assert_response :success
 end
end