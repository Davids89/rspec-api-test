# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  name       :string
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < ApplicationRecord
  include BookRepresentations

  has_many :operations, dependent: :destroy
  belongs_to :editorial

  accepts_nested_attributes_for :editorial

  validates :name, length: {minimun: 5, maximum: 25}
end
