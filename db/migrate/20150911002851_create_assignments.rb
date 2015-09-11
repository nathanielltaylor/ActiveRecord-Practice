class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.belongs_to :developer, null: false
      t.belongs_to :application, null: false
    end
  end
end
