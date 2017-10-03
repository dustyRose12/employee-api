Rails.application.routes.draw do

    get '/employees' => 'employees#index'
    
    namespace :api do
      namespace :v1 do #this allows you to create 2 versions of your API in case you changed too much. You want users to be able to use it if you changed too much so you make 2 versions.

        get '/employees' => 'employees#index'
        post '/employees' => 'employees#create'
        get '/employees/:id' => 'employees#show'
        patch '/employees/:id' => 'employees#update'
        delete '/employees/:id' => 'employees#destroy'
     end

      namespace :v2 do 

        get '/employees' => 'employees#index'
        post '/employees' => 'employees#create'
        get '/employees/:id' => 'employees#show'
        patch '/employees/:id' => 'employees#update'
        delete '/employees/:id' => 'employees#destroy'
     end

    end

end
