class Product < ApplicationRecord
    belongs_to :user

    validates :name, presence: true, length: {minimum: 3, maximum: 50}
    validates :category, presence: true#, inclusion: { in: %w(electronics, cloths, toys, furniture, smart_phones)
    #enum :category, [:electronics, :cloths, :toys, :furniture, :smart_phones]
    validates :price, presence: true
    
end