class Song < ActiveRecord::Base
  belongs_to :artist
  validates :name, :artist_id, presence: true, length: {minimum: 1}, uniqueness: true
  validates_uniqueness_of :name, :scope => :artist_id

  scope :recent, -> (minutes_past = 60) {where("created_at > ?", minutes_past.minutes.ago)}
end

#acceptance.. validates :terms_of_service, acceptance: true
#if/unless...
  # validates :card_number, presence: true, if: :piad_with_card?

  # def paird_with_card?
  #   payment_type == "card"
  # end

# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_songs_on_artist_id  (artist_id)
#
