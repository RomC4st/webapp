require 'mongoid'
require 'json'

#Define a function to parse request object in JSON (not functional yet)
def json_params
  begin
    JSON.parse(request.body.read)
  end
  
end

# GET, function .map on Post(not in JSON), redirect 
get "/post" do
  @Post = Post.all.map {|p| p.content + ' ' + p.title}
  erb :layout , :layout =>:post

end

#GET show all Post Data
get "/post_all" do
   Post.all.to_json 

end

#POST not functional yet
post '/post' do
  Post.new(request.body.read)
  if Post.save
    response.status 201
  end

end