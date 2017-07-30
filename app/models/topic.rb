class Topic < ApplicationRecord
  STATUSES = %w{pending In\ Discussion In\ Summary In\ Review Published}

  OPEN_STATUSES = %w{pending In\ Discussion}

  belongs_to :creator, foreign_key: :prefacer, class_name: 'User'
  belongs_to :subject
  has_many :comments
  has_one :page

  before_save :set_discussion_colsing_time

  def set_discussion_colsing_time
    self.closing_time = 48.hours.from_now if self.status == 'In Discussion' && self.closing_time.nil?
  end
end
