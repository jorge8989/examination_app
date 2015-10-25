class QuestionsController < ApplicationController
  def get_question
    @question = Question.find(params[:id])
    render 'question_data'
  end
end
