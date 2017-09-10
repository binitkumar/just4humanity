# Preview all emails at http://localhost:3000/rails/mailers/inform_admin_mailer
class InformAdminMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/inform_admin_mailer/contact_request
  def contact_request
    InformAdminMailer.contact_request
  end

end
