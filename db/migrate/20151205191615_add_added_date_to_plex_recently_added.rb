class AddAddedDateToPlexRecentlyAdded < ActiveRecord::Migration
  def change
    create_table :plex_recently_addeds do |t|
      t.datetime :added_date

      t.timestamps null:false
    end
  end
end
