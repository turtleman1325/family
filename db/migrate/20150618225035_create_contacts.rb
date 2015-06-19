class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.string :department
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
