class AddNameToIds < ActiveRecord::Migration[6.0]
  def change
    add_column :ids, :name, :string
  end
end
