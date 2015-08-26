class AddImageToFlats < ActiveRecord::Migration
  def change
    add_attachment :flats, :image
  end
end
