# == Schema Information
#
# Table name: operations
#
#  id   :integer          not null, primary key
#  date :date
#

class Operation < ApplicationRecord
  belongs_to :user, dependent: :nullify
  belongs_to :book, dependent: :nullify
  belongs_to :operation_type, dependent: :nullify
end
