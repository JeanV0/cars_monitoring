class CreateCams < ActiveRecord::Migration[7.1]
  def change
    create_table :cams do |t|
      t.string :identifier
      t.string :password_digest
      t.boolean :status

      t.timestamps
    end
  end
end
