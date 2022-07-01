class InquiryMailer < ApplicationMailer
  default from: "muyobaya@exdonuts.com"   # 送信元アドレス

  def contact_mail(contact, user)
    @contact = contact
    mail to: user.email, bcc: ENV["ACTION_MAILER_USER"], subject: "お問い合わせについて【自動送信】"
  end
end
