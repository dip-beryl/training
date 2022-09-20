class User < ApplicationRecord

    before_save :remove_hidden_value_from_check_box
    before_save :email_downcase

    validates :name, presence: true
    validates :contact, presence: true, numericality: { only_integer: true }, length: {is: 10}, format: {with: %r(\A[6-9]\d{9}\z)}
    validates :email, presence: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }
    validates :password, presence: true, confirmation: true, length: {minimum: 6}
    validates :password_confirmation, presence: true

    

    private
        def remove_hidden_value_from_check_box
            self.category = self.category.drop(1)
        end

        def email_downcase
            self.email.downcase!
        end

end