Rails.application.routes.draw do
  root 'exams#welcome'
  get 'questions_list', to: 'questions#list', as: 'questions_list'
  get '/take_test', to: 'exams#take_test', as: 'take_test'
  get 'get_question', to: 'questions#get_question', as: 'get_question'
end
