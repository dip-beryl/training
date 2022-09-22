class User < ApplicationRecord
    # enum :category, [:Electronics, :Cloths, :Toys, :Furniture, :"Smart Phones", :Cosmetics, :Kitchen, :Appliance]

    # before_save :capitalize_first_letter
    before_save :email_downcase
    before_save :remove_hidden_value_from_check_box

    validates :name, presence: true

    validates :contact, presence: {message: "Contact can't be blank"}, 
                        numericality: { only_integer: true, message: "Contact should be numeric" }, 
                        length: {is: 10, message: "Contact must contain only 10 digits"}, 
                        format: {with: %r(\A[6-9]\d{9}\z), message: "Invalid Contact"}
    # validates :category, presence: {message: "Must select atleast one category"}

    validates :email, presence: true, format: {with: %r(\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z), message: "Address is Invalid" }
    validates :password, presence: true, confirmation: true, length: {minimum: 6, message: "must contain atleast 6 characters"}
    validates :password_confirmation, presence: true

    private
        def remove_hidden_value_from_check_box
            self.category = self.category.drop(1)
        end

        def email_downcase
            self.email.downcase!
        end

end