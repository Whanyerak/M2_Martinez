class AddCompteToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :compte, :int
  end
end
