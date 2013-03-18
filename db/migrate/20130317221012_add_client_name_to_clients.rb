class AddClientNameToClients < ActiveRecord::Migration
  def change
    add_column :clients, :clientName, :string
  end
end
