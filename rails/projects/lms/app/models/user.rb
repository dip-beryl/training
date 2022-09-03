class User < ApplicationRecord

    validates :name, :email, presence: true
    
    before_validation :ensure_name_has_a_value
                
    after_validation do
        self.status = true unless(name.blank? and email.blank?)
    end

    # before_save do
    #     self.name.upcase!
    # end

    after_save do
        self.name.downcase!
    end

    private
    def ensure_name_has_a_value
        if name.nil?
            self.name = email unless email.blank?
        end
    end

end