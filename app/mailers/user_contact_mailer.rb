class UserContactMailer < ApplicationMailer

    default from: 'p176137@nu.edu.pk'

    def welcome_email
      @user = params[:user_contact]
    #   @url  = 'http://example.com/login'
      mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    end

    def new_message_email
      @user = params[:user_contact]
  
      mail(to: @user.email, subject: @user.subject)
    end

end
