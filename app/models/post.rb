#Define Model Post

class Post 
  include Mongoid::Document
  field :title ,type: String
  field :content, type: String
  field :photo, type: String
  field :rating, type: String
  has_many :Comment
end
