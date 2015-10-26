class ExamsController < ApplicationController
  before_action :clear_sessions, except: [:take_test, :check_answer]
  before_action :set_variables, only: [:take_test, :check_answer]
  
  def welcome
  end
  
  def take_test
  end
  
  def check_answer
    @selected = params[:choices]
      if @selected == @answer
        session[:correct] += 1
      end
      session[:position] += 1
    redirect_to take_test_path
  end
  
  private 
  
  def set_variables
    @questions_ids = gon.questions_ids
    @position = gon.position
    @question = Question.find(gon.questions_ids[gon.position])
    @answer = @question.answer
  end
  
end 
