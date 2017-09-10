class InformAdminMailer < ApplicationMailer

  def contact_request(request_info)
    @request_info = request_info
    mail to: "just4humanities@gmail.com"
  end
end
