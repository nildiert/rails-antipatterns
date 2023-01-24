# == Schema Information
#
# Table name: addresses
#
#  id          :integer          not null, primary key
#  city        :string
#  state       :string
#  street      :string
#  zip_code    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  customer_id :integer          not null
#
# Indexes
#
#  index_addresses_on_customer_id  (customer_id)
#
# Foreign Keys
#
#  customer_id  (customer_id => customers.id)
#
class Address < ApplicationRecord
  belongs_to :customer, :class_name => 'Customer', :foreign_key => 'customer_id'
end
