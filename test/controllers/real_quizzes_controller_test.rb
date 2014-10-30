require 'test_helper'

class RealQuizzesControllerTest < ActionController::TestCase
  setup do
    @real_quiz = real_quizzes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:real_quizzes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create real_quiz" do
    assert_difference('RealQuiz.count') do
      post :create, real_quiz: { quiz_name: @real_quiz.quiz_name, user_id: @real_quiz.user_id }
    end

    assert_redirected_to real_quiz_path(assigns(:real_quiz))
  end

  test "should show real_quiz" do
    get :show, id: @real_quiz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @real_quiz
    assert_response :success
  end

  test "should update real_quiz" do
    patch :update, id: @real_quiz, real_quiz: { quiz_name: @real_quiz.quiz_name, user_id: @real_quiz.user_id }
    assert_redirected_to real_quiz_path(assigns(:real_quiz))
  end

  test "should destroy real_quiz" do
    assert_difference('RealQuiz.count', -1) do
      delete :destroy, id: @real_quiz
    end

    assert_redirected_to real_quizzes_path
  end
end
