class AddOrganizationidToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :organization_id, :integer
  end
end
