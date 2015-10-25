class ExamsController < ApplicationController
  before_action :clear_sessions, except: [:take_test]
  
  def welcome
    session[:pos] = nil;
  end
  
  def take_test
    @questions_ids = gon.questions_ids
    @position = gon.position
  end
end 
