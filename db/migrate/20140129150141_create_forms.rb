class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :email
      t.text :body

      t.timestamps
    end
  end
end
