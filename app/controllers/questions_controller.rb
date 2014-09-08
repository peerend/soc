class QuestionsController < ApplicationController

  def index
    @questions = Question.all

  end

  def show
    @question = Question.find(params[:id])
  end

  private

  def question_params
    params.require(:questions).permit(:title, :decsription, :user_id)
  end

end
