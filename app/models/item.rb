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

class Item < ActiveRecord::Base
  attr_accessible :name, :person_id, :price
  belongs_to :person
end
