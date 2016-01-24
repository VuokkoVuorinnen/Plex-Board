class AddIndexToPlexObjects < ActiveRecord::Migration
  def change
    add_index :plex_objects, :plex_object_flavor_id
    add_index :plex_objects, :plex_object_flavor_type
  end
end
