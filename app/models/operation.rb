# == Schema Information
#
# Table name: operations
#
#  id   :integer          not null, primary key
#  date :date
#

class Operation < ApplicationRecord
    belongs_to :user
    belongs_to :book
    belongs_to :operation_type
end
