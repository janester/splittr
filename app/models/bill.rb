# == Schema Information
#
# Table name: bills
#
#  id         :integer          not null, primary key
#  total      :float
#  tax        :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bill < ActiveRecord::Base
  attr_accessible :tax, :total
  has_many :people
end
