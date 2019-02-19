#Define Model Comment

class Comment
  include Mongoid::Document
  field :comment, type: String
  field :title,   type: String
  belongs_to :Post, foreign_key: :title
end  