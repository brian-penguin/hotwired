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
require "test_helper"

class PartTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
