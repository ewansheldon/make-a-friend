module MakeAFriend
  class UserInviter < ApplicationMailer
    # default from: 'notifications@example.com'
    default from: ENV['MIMO_DEFAULT_FROM_EMAIL'] || "no-reply@#{ENV['MIMO_SMTP_DOMAIN']}"

    def invite_user
      @business = params[:business]
      mail(to: params[:email], business: params[:business], subject: 'New setup code!')
    end
  end
end