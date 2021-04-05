class AddFlavortextToMonster < ActiveRecord::Migration[6.0]
  def change
    add_column :monsters, :message, :string
  end
end
