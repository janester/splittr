# == Schema Information
#
# Table name: bills
#
#  id          :integer          not null, primary key
#  total       :float
#  tax         :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  tip         :float
#  tip_percent :float
#

require 'spec_helper'

describe Bill do
  pending "add some examples to (or delete) #{__FILE__}"
end
