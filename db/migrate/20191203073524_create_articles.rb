class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles, id: false do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title

      t.primary_key :id, :bigserial, null: false
      t.timestamps null: false
    end
  end
end
