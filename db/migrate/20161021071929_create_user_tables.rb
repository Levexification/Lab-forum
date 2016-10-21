class CreateUserTables < ActiveRecord::Migration[5.0]
  def change
    create_table :user_tables do |t|
      t.string :user_name
      t.string :user_pass
      t.string :user_mail

      t.timestamps
    end
  end
end
