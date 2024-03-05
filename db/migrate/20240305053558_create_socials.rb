class CreateSocials < ActiveRecord::Migration[7.1]
  def change
    create_table :socials do |t|
      t.string :username
      t.string :password
      t.string :media_type

      t.timestamps
    end
  end
end
