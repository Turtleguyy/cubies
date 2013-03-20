class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :team_id
      t.string :user_name
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :avatar
      t.string :password_digest

      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
