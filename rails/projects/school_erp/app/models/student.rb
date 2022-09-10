class Student < ApplicationRecord
    #validates :last_name, presence: true
    
    enum :gender, [:male, :female, :other]

    enum :status, [:inactive, :active]
end
