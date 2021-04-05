class CreateUserMonsters < ActiveRecord::Migration[6.0]
  def change
    create_table :user_monsters do |t|
      t.integer :hunger_level
      t.integer :happiness
      t.integer :power
      t.integer :user_id
      t.integer :monster_id
      t.string :name
      

      t.timestamps
    end
  end
end
