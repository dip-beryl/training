class Author < ApplicationRecord
    has_many :blogs, dependent: :destroy
end