class CreatePictures < ActiveRecord::Migration[6.1]
  def change
    create_table :pictures do |t|
      t.string :caption
      t.string :img_link
      t.integer :party_id
    end
  end
end
