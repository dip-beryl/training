class Book < ApplicationRecord

    validates :name, presence: true
    
    validates :terms_of_service, acceptance: {message: "Please accept t&c"}

    validates :isbn, comparison: {greater_than: 100}

    # self.table_name = "book_details"
	# self.primary_key = "isbn"
end