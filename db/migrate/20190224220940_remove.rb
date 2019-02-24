class Remove < ActiveRecord::Migration[5.2]
  def change
    remove_column :people, :address_id, :integer
  end
end
