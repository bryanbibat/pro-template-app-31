class CreateBlogEntries < ActiveRecord::Migration
  def change
    create_table :blog_entries do |t|
      t.string :subject
      t.text :content
      t.datetime :publish_at

      t.timestamps
    end
  end
end
