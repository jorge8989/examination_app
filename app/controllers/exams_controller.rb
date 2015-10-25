class ExamsController < ApplicationController
  
  def welcome
    session[:pos] = nil;
  end
  
  def take_test
    @questions_ids = gon.questions_ids
    @position = gon.position
  end
end 
