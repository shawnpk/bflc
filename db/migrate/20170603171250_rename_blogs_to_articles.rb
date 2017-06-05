class RenameBlogsToArticles < ActiveRecord::Migration[5.1]
  def self.up
    rename_table :blogs, :articles
  end

  def self.down
    rename_table :articles, :blogs
  end
end
