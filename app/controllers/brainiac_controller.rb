class BrainiacController < ApplicationController
  def index
  end

  def takequiz
  	@quizzes = Quiz.all
  end
end
