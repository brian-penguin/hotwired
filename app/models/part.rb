# == Schema Information
#
# Table name: parts
#
#  id                    :bigint           not null, primary key
#  ads_cost              :integer
#  name                  :string
#  supplier_parts_number :string
#  supplier_quote_number :string
#  unit_cost             :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
class Part < ApplicationRecord
  after_create_commit { broadcast_prepend_to "parts" }
  after_update_commit { broadcast_replace_to "parts" }
  after_destroy_commit { broadcast_remove_to "part" }

  validates :name, :ads_cost, presence: true

  validate :quote_number_exists_if_part_number_present

  def quote_number_exists_if_part_number_present
    if supplier_quote_number.blank? && supplier_parts_number.present?
      errors.add(:supplier_quote_number, "Supplier quote number must exist for parts with supplier parts number")
    end
  end
end
