class Student < ApplicationRecord
    enum :gender, [:male, :female, :other]

    enum :status, [:not_active, :active]
end
