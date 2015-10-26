Rails.application.routes.draw do
  root 'exams#welcome'
  get 'questions_list', to: 'questions#list', as: 'questions_list'
  get '/take_test', to: 'exams#take_test', as: 'take_test'
  post '/check_answer', to: 'exams#check_answer', as: 'check_answer'
  get 'get_question', to: 'questions#get_question', as: 'get_question'
end
