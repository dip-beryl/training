class User < ApplicationRecord

    validates :name, :email, presence: true
    
    before_validation :ensure_name_has_a_value
    
    private
        def ensure_name_has_a_value
            if name.nil?
                self.name = email unless email.blank?
            end
        end
end