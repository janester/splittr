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

class Bill < ActiveRecord::Base
  attr_accessible :tax, :total, :tip_percent, :tip
  has_many :people

  def items
    self.people.map{|x| x.items}.flatten
  end
end
