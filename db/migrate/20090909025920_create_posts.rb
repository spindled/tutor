class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.integer :lesson_id, :null => false, :options => 
        "CONSTRAINT fk_post_lessons REFERENCES lessons(id)"
      t.string :name
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
