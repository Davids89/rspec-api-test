# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  auth_tokens     :string
#  email           :string
#  name            :string
#  password_digest :string
#  surname         :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  include UserRepresentations
  include RailsJwtAuth::Authenticatable

  has_many :operations, dependent: :destroy
end
