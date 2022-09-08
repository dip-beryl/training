class Order < ApplicationRecord
    belongs_to :customer

    enum :status, [:shipped, :processing, :cancelled, :delivered]

    scope :in_process, -> { where(status: 1)}

    scope :in_process_and_very_old, -> { in_process.where("created_at > '2022-07-01'")}

    scope :costs_more_than, ->(amount) { where("total > ?", amount) }


end