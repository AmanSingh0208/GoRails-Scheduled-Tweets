class CreateUser1s < ActiveRecord::Migration[6.1]
  def change
    create_table :user1s do |t|
      t.string :email, null: false
      t.string :password_digest

      t.timestamps
    end
  end
end
