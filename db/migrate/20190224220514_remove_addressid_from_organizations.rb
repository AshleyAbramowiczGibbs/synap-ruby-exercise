class RemoveAddressidFromOrganizations < ActiveRecord::Migration[5.2]
  def change
    remove_column :organizations, :address_id, :integer
  end
end
