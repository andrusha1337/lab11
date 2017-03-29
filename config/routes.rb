Rails.application.routes.draw do
  get 'input' => 'lab8#input'
  get 'output' => 'lab8#output'
  get 'xml' => 'lab8#xml'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
