class Order < ApplicationRecord
    belongs_to :customer

    enum :status, [:shipped, :processing, :cancelled, :delivered]
end