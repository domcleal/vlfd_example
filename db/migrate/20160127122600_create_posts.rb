class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :test, :limit => 10
    end
  end

  def down
    drop_table :posts
  end
end
