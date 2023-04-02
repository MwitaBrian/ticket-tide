class AddLikesToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :likes, :integer
  end
end
