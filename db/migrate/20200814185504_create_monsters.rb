class CreateMonsters < ActiveRecord::Migration[6.0]
  def change
    create_table :monsters do |t|
      t.string :type
      t.string :image_url

      t.timestamps
    end
  end
end
