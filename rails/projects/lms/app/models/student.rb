class Student < ApplicationRecord
    
    validates :name, length: {maximum: 25}

    validates :contact_no, length: {within: 8..15}

    validates :roll_no, numericality: { only_integer: true}

end