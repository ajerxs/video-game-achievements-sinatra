class CreateUserAchievements < ActiveRecord::Migration[6.0]
  def change
    create_table :user_achievements do |t|
      t.integer :user_id
      t.integer :achievement_id
    end
  end
end
