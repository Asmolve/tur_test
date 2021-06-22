class CreateRegions < ActiveRecord::Migration[6.1]
  def change
    create_table :regions do |t|
      t.string :region_name
      t.belongs_to :country

      t.timestamps
    end
  end
end
