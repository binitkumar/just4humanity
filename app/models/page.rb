class Page < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :topic
  belongs_to :creator, class_name: 'User'
end
