class Comment < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  belongs_to :topic

  validates_presence_of :content
end
