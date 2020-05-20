class WelcomeMailer < ApplicationMailer
    default from: 'ty18881@yahoo.com'

    def welcome_email
        @parent = params[:parent]
        @url = 'http://localhost:3001'
        email_with_name = %("#{@parent.name}" <#{@parent.email}>)
        mail(to: email_with_name, subject: 'Welcome to Extra Time')
    end
end
