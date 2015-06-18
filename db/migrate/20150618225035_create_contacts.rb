class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.string :company
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
