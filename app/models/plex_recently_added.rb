class PlexRecentlyAdded < ActiveRecord::Base
  belongs_to :plex_service
  has_one :plex_object, as: :plex_object_flavor, dependent: :destroy
  accepts_nested_attributes_for :plex_object

  validates_associated :plex_service
  validates :added_date, presence: :true, allow_blank: :false, allow_nil: :false
  validates :uuid, presence: :true, allow_blank: :false, allow_nil: :false

  def get_added_date
    self.added_date.to_date.strftime("%m/%d/%Y")
  end
end
