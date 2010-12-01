class LetterMailer < ActionMailer::Base
  MY_ADDRESS = "coder3457@gmail.com"
  default :from => MY_ADDRESS

  def letter_email(message)
    @message = message
    mail(:to => MY_ADDRESS,
         :subject => "blog comment")
  end
end
