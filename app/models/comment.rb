class Comment < ApplicationRecord
  acts_as_votable

  belongs_to :creator, class_name: 'User'
  belongs_to :topic

  validates_presence_of :content
end
