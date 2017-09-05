class RemoveRankingFromAlbums < ActiveRecord::Migration[5.1]
  def change
    remove_column(:albums, :ranking, :integer)
  end
end
