require 'mongoid'
require 'json'

#Define a function to parse request object in JSON (not functional yet)
def json_params
  begin
    JSON.parse(request.body.read)
  end
end

# GET, function .map on Comment(not in JSON), redirect 
get "/comment" do
  @Comment = Comment.all.map { |c| c.comment + ' ' + c.title} 
  erb :layout , :layout =>:comment

end

#GET show all Comment Data
get "/comment_all" do
  Comment.all.to_json

end

#POST not functional yet
post '/comment' do
  Comment.new(json_params)
  if Comment.save
    response.status 201
  end

end