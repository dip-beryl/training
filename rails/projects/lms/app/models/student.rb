class StudentValidator < ActiveModel::Validator
    def validate(record)
        if record.name == "Evil"
          record.errors.add :base, "This person is evil"
        end
    end
end


class Student < ApplicationRecord

    has_many :comments
    
    validates :name, length: {maximum: 25}

    validates :contact_no, length: {within: 8..15}

    validates :roll_no, numericality: { only_integer: true}

    validates_with StudentValidator
end

