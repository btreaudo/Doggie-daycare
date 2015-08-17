class AddBioToArtists < ActiveRecord::Migration
  def change
    add_reference :artists, :bio, index: true, foreign_key: true
  end
end
