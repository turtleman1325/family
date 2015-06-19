class AddDepartmentReferenceToContacts < ActiveRecord::Migration
  def change
    change_table :contacts do |t|
      t.references :department
    end
  end
end
