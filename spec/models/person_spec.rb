# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  total      :float
#  name       :string(255)
#  bill_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Person do
  pending "add some examples to (or delete) #{__FILE__}"
end
