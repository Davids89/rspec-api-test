# == Schema Information
#
# Table name: operation_types
#
#  id    :integer          not null, primary key
#  color :string
#  name  :string
#

class OperationType < ApplicationRecord
    has_many :operations
end