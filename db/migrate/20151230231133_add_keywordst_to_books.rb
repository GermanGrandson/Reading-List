class AddKeywordstToBooks < ActiveRecord::Migration
  def change
    add_column :books, :keywords, :text
  end
end
