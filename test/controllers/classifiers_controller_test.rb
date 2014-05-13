require 'test_helper'

class ClassifiersControllerTest < ActionController::TestCase
  setup do
    @classifier = classifiers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classifiers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create classifier" do
    assert_difference('Classifier.count') do
      post :create, classifier: { x1: @classifier.x1, x2: @classifier.x2, x3: @classifier.x3, x4: @classifier.x4, x5: @classifier.x5, x6: @classifier.x6 }
    end

    assert_redirected_to classifier_path(assigns(:classifier))
  end

  test "should show classifier" do
    get :show, id: @classifier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @classifier
    assert_response :success
  end

  test "should update classifier" do
    patch :update, id: @classifier, classifier: { x1: @classifier.x1, x2: @classifier.x2, x3: @classifier.x3, x4: @classifier.x4, x5: @classifier.x5, x6: @classifier.x6 }
    assert_redirected_to classifier_path(assigns(:classifier))
  end

  test "should destroy classifier" do
    assert_difference('Classifier.count', -1) do
      delete :destroy, id: @classifier
    end

    assert_redirected_to classifiers_path
  end
end
