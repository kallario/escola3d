Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  
  ActiveAdmin.routes(self)

  resources :respostas
  resources :perguntas
  resources :dons
  resources :grupos
  resources :caderno_respostas

  # resources :usuarios, only: [:show, :edit, :update]

  root 'welcome#index'

  get 'welcome/escola_dons', to: 'welcome#escola_dons', as: 'escola_dons'

  get 'aulas/lista_disciplinas', to: 'aulas#lista_disciplinas', as: 'lista_disciplinas'
  get 'welcome/aguardando', to: 'welcome#aguardando', as: 'aguardando'

  devise_for :views
  devise_for :usuarios, controllers: { registrations: 'usuarios/registrations' }

  match 'processar_processar_resultados', to: 'processar_resultados#processar', via: :all
  match 'validar_processar_resultados', to: 'processar_resultados#validar', via: :all
  match 'show_processar_resultados', to: 'processar_resultados#show', via: :all

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end