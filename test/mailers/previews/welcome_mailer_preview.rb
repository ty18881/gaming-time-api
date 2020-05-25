# Preview all emails at http://localhost:3000/rails/mailers/welcome_mailer
class WelcomeMailerPreview < ActionMailer::Preview

    def welcome_email(parent)
        parent = Parent.first
        WelcomeMailer.with(parent: parent.name).welcome_email
    end
end
