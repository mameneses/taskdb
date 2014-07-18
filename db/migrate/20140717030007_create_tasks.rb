class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :content
      t.boolean :complete, default: false
      t.integer :user_id
      t.timestamps
    end
  end
end