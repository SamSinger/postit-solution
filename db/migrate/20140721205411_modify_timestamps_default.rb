class ModifyTimestampsDefault < ActiveRecord::Migration
  def change
    change_column :users, :created_at, :datetime, :default => DateTime.now
    change_column :users, :updated_at, :datetime, :default => DateTime.now
    change_column :posts, :updated_at, :datetime, :default => DateTime.now
    change_column :posts, :created_at, :datetime, :default => DateTime.now
    change_column :post_categories, :created_at, :datetime, :default => DateTime.now
    change_column :post_categories, :updated_at, :datetime, :default => DateTime.now
    change_column :comments, :created_at, :datetime, :default => DateTime.now
    change_column :comments, :updated_at, :datetime, :default => DateTime.now
    change_column :categories, :created_at, :datetime, :default => DateTime.now
    change_column :categories, :updated_at, :datetime, :default => DateTime.now

  end
end
