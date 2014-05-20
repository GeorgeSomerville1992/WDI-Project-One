class Comment < ActiveRecord::Base
  belongs_to :user
  attr_accessible :body, :date_logged, :name, :flag
end
