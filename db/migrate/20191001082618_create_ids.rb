class CreateIds < ActiveRecord::Migration[6.0]
  def change
    create_table :ids do |t|

    	t.string :name, null: false

      t.timestamps
    end
  end
end
