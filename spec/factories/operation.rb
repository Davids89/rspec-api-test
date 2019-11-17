FactoryBot.define do
  factory :operation do
    user { create :user }
    book { create :book }
    operation_type { OperationType.find_or_create_by(attributes_for(:operation_type)) }
    date { Time.zone.today }
  end
end
