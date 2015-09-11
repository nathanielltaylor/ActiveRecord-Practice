class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :phone_number
    end
  end
end
