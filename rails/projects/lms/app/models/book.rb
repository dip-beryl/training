class Book < ApplicationRecord

    validates :name, presence: true
    
    validates :terms_of_service, acceptance: {message: "Please accept t&c"}

    validates :isbn, comparison: {greater_than: 100}

    validates :name, exclusion: { in: ["copy", "book"]}

    validates :author, format: { with: /\A[a-zA-Z]+\z/ }

    validates_each :name, :author do |record, attribute, value|
                
        if value =~ /\A[[:lower:]]/
            record.errors.add(attribute, "Must start with upper case letter")
        end
    end
    
    # self.table_name = "book_details"
	# self.primary_key = "isbn"
end