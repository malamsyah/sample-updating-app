class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, id: false do |t|
      t.integer :age
      t.string :name

      t.primary_key :id, :bigserial, null: false
      t.timestamps null: false
    end
  end
end
