# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  editorial  :string
#  name       :string
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < ApplicationRecord
    has_many :operations
end
