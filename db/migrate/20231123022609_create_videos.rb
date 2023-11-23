class CreateVideos < ActiveRecord::Migration[7.1]
  def change
    create_table :videos do |t|
      t.string :url
      t.string :info
      t.references :cam, null: false, foreign_key: true

      t.timestamps
    end
  end
end
