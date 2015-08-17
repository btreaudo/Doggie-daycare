class Bio < ActiveRecord::Base
  has_many :artists
end

# == Schema Information
#
# Table name: bios
#
#  id         :integer          not null, primary key
#  bio        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
