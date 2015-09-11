class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :name, null: false
      t.date :due, null: false
      t.belongs_to :developer
      t.belongs_to :application, null: false
    end
  end
end
