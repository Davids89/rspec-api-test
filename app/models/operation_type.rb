# == Schema Information
#
# Table name: operation_types
#
#  id    :integer          not null, primary key
#  color :string
#  name  :string
#  type  :string
#

class OperationType < ApplicationRecord
  has_many :operations, dependent: :destroy

  validates :type, inclusion: {in: %w[purchase sale]}
end
