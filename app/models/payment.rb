class Payment < ApplicationRecord
    belongs_to :user
    belongs_to :event
  
    validates :amount, presence: true, numericality: { greater_than: 0 }
    validates :currency, presence: true
    validates :description, presence: true
  end
end
