class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|

      t.integer :rating
      t.string :name
      t.string :day
      t.string :network

    end
  end
end
