class WelcomeMailer < ApplicationMailer
    default from: 'ty18881@yahoo.com'

    ## when you first create the mailer, specify the name of the method you'd like to be created
    ## e.g.  rails g mailer MailerNameHere methodNameHere anotherMethodNameHere
    ## remember this is being called by the controller.
    def welcome_email(parent)
        puts 'Inside Welcome Mailer'
        puts parent
        @parent = parent

        ## this actually creates the mail message by rendering the corresponding template.
        mail to: @parent.email, 
                subject: "Welcome to Extra Time #{@parent.name}"

    end
end
