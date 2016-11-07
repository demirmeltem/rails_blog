class CreateKullanicis < ActiveRecord::Migration[5.0]
  def change
    create_table :kullanicis do |t|
    	t.string :username
    	t.string :first_name
    	t.string :last_name
    	t.string :email
    	t.string :password_digest

      t.timestamps
    end
  end
end
