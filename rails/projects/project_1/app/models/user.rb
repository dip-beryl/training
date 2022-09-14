class User < ApplicationRecord
    validates :name, presence: true
    validates :contact, presence: true, numericality: { only_integer: true }, length: {is: 10}
    validates :email, presence: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }
    validates :password, presence: true, confirmation: true, length: {minimum: 6}
    validates :password_confirmation, presence: true

end

