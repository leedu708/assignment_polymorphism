Rails.application.routes.draw do

  root 'graduate_programs#index'

  resources :undergraduate_programs do
    resources :students, :defaults => { :program => 'UndergraduateProgram'}
  end

  resources :graduate_programs do
    resources :students, :defaults => { :program => 'GraduateProgram' }
  end

end
