class CreateCampsites < ActiveRecord::Migration[6.1]
  def change
    create_table :campsites do |t|
      t.string :campsite_name
      t.belongs_to :city
      t.timestamps
    end
  end
end
