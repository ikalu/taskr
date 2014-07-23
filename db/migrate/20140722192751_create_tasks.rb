class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :body, null: false
      t.belongs_to :user

      t.timestamps
    end
  end
end
