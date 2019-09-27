class CreateBeaches < ActiveRecord::Migration[6.0]
  def change
    create_table :beaches do |t|
      t.integer :location_id
      t.string :name
      t.string :summary
      t.string :region
      t.string :image_url

      t.timestamps
    end
  end
end
