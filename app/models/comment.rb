class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :song
  attr_accessible :body, :date_logged, :name, :flag, :user, :song_id
end
