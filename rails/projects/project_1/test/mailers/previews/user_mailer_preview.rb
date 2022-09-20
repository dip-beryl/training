# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

    def new_registration
        UserMailer.with(user: User.first).new_registration
    end
end
