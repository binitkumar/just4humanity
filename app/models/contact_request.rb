class ContactRequest < ApplicationRecord
  validates_presence_of :name, :email, :phone_no, :message

  after_create :send_admin_notification

  def send_admin_notification
    InformAdminMailer.contact_request(self).deliver
  end
end
