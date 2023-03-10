# == Schema Information
#
# Table name: invoices
#
#  id          :integer          not null, primary key
#  price       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  customer_id :integer          not null
#
# Indexes
#
#  index_invoices_on_customer_id  (customer_id)
#
# Foreign Keys
#
#  customer_id  (customer_id => customers.id)
#
class Invoice < ApplicationRecord
  belongs_to :customer

  delegate :name, :street, :city, :state, :zip_code, to: :customer, prefix: true

end
