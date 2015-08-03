class Review < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user
  belongs_to :user
  belongs_to :movie
end
