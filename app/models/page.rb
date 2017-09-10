class Page < ApplicationRecord
  extend FriendlyId
  friendly_id :applicable_title, use: :slugged

  belongs_to :topic
  belongs_to :creator, class_name: 'User'

  has_many :page_comments

  def applicable_title
    self.topic.title
  end  
end
