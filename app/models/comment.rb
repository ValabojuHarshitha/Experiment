class Comment < ActiveRecord::Base
  attr_accessible :name, :who_commented
end
