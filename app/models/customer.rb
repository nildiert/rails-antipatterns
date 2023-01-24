# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  address_id :integer
#
# Indexes
#
#  index_customers_on_address_id  (address_id)
#
# Foreign Keys
#
#  address_id  (address_id => addresses.id)
#
class Customer < ApplicationRecord
  has_one :address
  has_many :invoices
end
