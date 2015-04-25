class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.boolean :current
      t.integer :year
      t.integer :donation_goal
      t.text :donation_text
      t.text :about_text
      t.string :livestream_url
      t.string :video_url
      t.string :donation_url

      t.timestamps
    end
  end
end
