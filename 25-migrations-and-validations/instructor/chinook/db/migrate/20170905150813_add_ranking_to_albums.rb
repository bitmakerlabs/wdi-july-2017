class AddRankingToAlbums < ActiveRecord::Migration[5.1]
  def change
    add_column(:albums, :ranking, :integer)
  end
end
