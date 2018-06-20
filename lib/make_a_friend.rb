require "make_a_friend/engine"
# require "make_a_friend/application_controller"

module MakeAFriend
  class FriendsController < ApplicationController
    before_action :doorkeeper_authorize!

    def new
      render 'new'
    end

    def create
      settings = Settings.last
      email = params[:email]
      UserInviter.with(email: email, business: settings.try(:business_name)).invite_user.deliver_now
      @invite_sent = true
      render 'new'
    end
  end
end