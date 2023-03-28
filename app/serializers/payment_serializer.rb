class PaymentSerializer < ActiveModel::Serializer
  attributes :id, :amount, :currency, :description
  has_one :user
  has_one :event
end
