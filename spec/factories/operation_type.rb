FactoryBot.define do
  factory :operation_type do
    name { %w[Compra Venta].sample }
    color { '#000000' }
  end
end
