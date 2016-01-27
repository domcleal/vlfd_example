class Post < ActiveRecord::Base
  validates_lengths_from_database
end
