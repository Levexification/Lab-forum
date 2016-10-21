class CreatePostTables < ActiveRecord::Migration[5.0]
  def change
    create_table :post_tables do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
