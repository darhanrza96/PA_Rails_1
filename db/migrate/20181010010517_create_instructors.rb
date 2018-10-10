class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :id
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
