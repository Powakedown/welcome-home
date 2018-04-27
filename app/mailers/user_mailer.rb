class UserMailer < ApplicationMailer
  def new_mail(params)
    @message = params["message"]
    mail(
      :subject => params["title"],
      :to  => params["email"],
      :from => 'maxime@parentheze.com',
      :html_body => params["message"],
      :track_opens => 'true')
  end
end
