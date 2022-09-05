class User < ApplicationRecord

    validates :name, :email, presence: true
    
    before_validation :ensure_name_has_a_value
                
    after_validation do
        self.status = true unless(name.blank? and email.blank?)
    end


    # before_save do
    #     self.name.upcase!
    # end
    

    # after_save do
    #     self.name.downcase!
    # end
    

    around_save :around_save_func

    private
        def ensure_name_has_a_value
            if name.nil?
                self.name = email unless email.blank?
            end
        end

        def around_save_func
            self.name.upcase!       # all the code before [ yield ] is processed as before_save

            yield

            self.name.downcase!      # all the code after [ yield ] is processed as after_save
        end


end