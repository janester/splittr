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

class Person < ActiveRecord::Base
  attr_accessible :name, :total, :bill_id
  belongs_to :bill
  has_many :items

  def get_total
    self.total = self.items.map(&:price).reduce(:+)
    self.save
  end
end
