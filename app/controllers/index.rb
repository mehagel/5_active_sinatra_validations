get '/' do
  @events = Event.all
  erb :index
end

get '/event/:id' do
  @event = Event.find(params[:id])
  erb :event_show
end

post '/events' do
  @new_event=Event.create(params)
  @events = Event.all
  erb :index 
end

post '/events/delete' do
  Event.find(params[:id]).destroy
  @events = Event.all
  erb :index
end

