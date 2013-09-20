# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  price      :float
#  name       :string(255)
#  person_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Item do
  pending "add some examples to (or delete) #{__FILE__}"
end
