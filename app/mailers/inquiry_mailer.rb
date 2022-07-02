class InquiryMailer < ApplicationMailer
  default from: "muyobaya@exdonuts.com"   # 送信元アドレス

  def received_email(inquiry)
    @inquiry = inquiry
    mail(:to => inquiry.email, :subject => "お問い合わせについて【自動送信】")
    #  bcc: ENV["ACTION_MAILER_USER"], 
  end
end
