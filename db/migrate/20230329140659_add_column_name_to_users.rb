class AddColumnNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :level, :string
  end
end
