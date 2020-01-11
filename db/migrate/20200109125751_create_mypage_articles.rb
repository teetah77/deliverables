class CreateMypageArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :mypage_articles do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
