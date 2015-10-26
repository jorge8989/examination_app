class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :set_sessions, :set_gon
  
  protected
  
  def set_gon
    gon.questions_ids = Question.limit(10).map {|q| q.id} || nil
    gon.position = session[:position]
    gon.correct = session[:correct] || nil
  end
  
  def set_sessions
    session[:position] ||= 0
    session[:correct] ||= 0
  end
  
  def clear_sessions
    session[:position] = 0
    session[:correct] = 0
  end
  
end
