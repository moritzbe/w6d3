class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.date   :birthday
      t.string :password_digest
      t.string :email
      t.timestamps
    end
  end
end
