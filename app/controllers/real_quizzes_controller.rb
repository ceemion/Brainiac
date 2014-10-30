class RealQuizzesController < ApplicationController
  before_action :set_real_quiz, only: [:show, :edit, :update, :destroy]

  def index
    @real_quizzes = RealQuiz.all
    respond_with(@real_quizzes)
  end

  def show
    respond_with(@real_quiz)
  end

  def new
    @real_quiz = RealQuiz.new
    respond_with(@real_quiz)
  end

  def edit
  end

  def create
    @real_quiz = RealQuiz.new(real_quiz_params)
    @real_quiz.save
    respond_with(@real_quiz)
  end

  def update
    @real_quiz.update(real_quiz_params)
    respond_with(@real_quiz)
  end

  def destroy
    @real_quiz.destroy
    respond_with(@real_quiz)
  end

  private
    def set_real_quiz
      @real_quiz = RealQuiz.find(params[:id])
    end

    def real_quiz_params
      params.require(:real_quiz).permit(:quiz_name, :user_id)
    end
end
