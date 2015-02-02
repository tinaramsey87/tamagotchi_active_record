class CreateTamagotchisAndUsers < ActiveRecord::Migration
  def change
    create_table :tamagotchis do |t|
      t.column :petname, :string
      t.column :food, :integer
      t.column :exercise, :integer
      t.column :sleep, :integer
      t.column :hygeine, :integer

      t.timestamps

    end

    create_table :users do |t|
      t.column :username, :string

      t.timestamps
    end

    create_table :tamagotchis_users do |t|
      t.belongs_to :user
      t.belongs_to :tamagotchi

      t.timestamps
    end
  end
end
