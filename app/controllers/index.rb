get '/' do
  @events = Event.all
  erb :index
end

get '/event/:id' do
  @event = Event.find(params[:id])
  erb :event_show
end

post '/events' do
  p params
  sessions =nil
  session[:title]=params[:title]
  @title = session[:title] 
  session[:name]=params[:organizer_name]
  @name = session[:name] 
  session[:email]=params[:organizer_email]
  @email = session[:email] 
  @new_event=Event.create(params)
  @events = Event.all
  erb :index 
end

post '/events/delete' do
  Event.find(params[:id]).destroy
  @events = Event.all
  erb :index
end

