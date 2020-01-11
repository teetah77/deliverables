class CreateAdminArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :admin_articles do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
