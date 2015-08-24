class AddFlatToPhotos < ActiveRecord::Migration
  def change
    add_reference :photos, :flat, index: true, foreign_key: true
  end
end
