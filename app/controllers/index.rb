get '/' do
  @events = Event.all
  erb :index
end

# get '/events/:id/find' do |id|
#   @event = Event.find(id)
#   erb :event_show
# end

post '/events/show' do
 @events = Event.all
 p @events
 erb :event_show
end

post '/events/create' do
  Event.create(params)
  erb :index
end
