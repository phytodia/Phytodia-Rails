class CreateBlogPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_posts do |t|
      t.string :titre
      t.rich_text :content

      t.timestamps
    end
  end
end
