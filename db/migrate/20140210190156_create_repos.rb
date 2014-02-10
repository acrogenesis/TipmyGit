class CreateRepos < ActiveRecord::Migration
  def change
    create_table :repos do |t|
      t.integer :user_id
      t.string :name
      t.string :github_url
      t.boolean :need_tip
      t.string :address
      t.integer :github_id
      t.datetime :last_sync

      t.timestamps
    end
  end
end
