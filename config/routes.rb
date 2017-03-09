Rails.application.routes.draw do

  get 'notes/index' 

  root 'notes#index'

  post 'new_note' => 'notes#new_note'

  post 'note/:id' => 'notes#edit'

end
