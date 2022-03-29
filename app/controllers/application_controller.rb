class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # guests = ["adam", "beth"]
  # Add your routes here
  get '/guests' do
    guests = Guest.all
    # if params["name"]
    #   guests = guests.where(name: params['name'])
    # end
    guests.to_json
  end

  get '/guests/:id' do
    guests = Guest.find(params[:id])
    guests.to_json
  end

  get "/guest/:name" do
    Guest.where(name: params['name']).to_json
  end

  patch "/guests/:id" do
    guest = Guest.find(params['id'])
    guest.update(attending: params['attending'])
    guest.reload
    guest.to_json
  end

  get '/pictures' do
    guests = Picture.all
    guests.to_json
  end
end
