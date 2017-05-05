Rails.application.routes.draw do
  resources :respostas
  resources :perguntas
  resources :dons
  resources :grupos
  resources :caderno_respostas

  # resources :usuarios, only: [:show, :edit, :update]

  root 'welcome#index'

  devise_for :views
  devise_for :usuarios, controllers: { registrations: 'registrations' }

  match 'processar_processar_resultados', to: 'processar_resultados#processar', via: :all
  match 'validar_processar_resultados', to: 'processar_resultados#validar', via: :all
  match 'show_processar_resultados', to: 'processar_resultados#show', via: :all

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
