class CreateStamps < ActiveRecord::Migration[6.0]
  def change
    create_table :stamps do |t|

    	t.string :place, null: true
    	t.boolean :get, null: false, default: false

    	t.integer :user_id, null: true

      t.timestamps
    end
  end
end
