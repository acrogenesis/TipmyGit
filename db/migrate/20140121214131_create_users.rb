class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :address
      t.string :email
      t.string :avatar_url
      t.string :public_repos

      t.timestamps
    end
  end
end
