class CreateYaksAndYakBacks < ActiveRecord::Migration
  def change
    create_table :yaks do |t|
      t.column :body, :string
      t.column :user_id, :integer

      t.timestamps
    end
  end

  def change
    create_table :yak_backs do |t|
      t.column :reply, :string
      t.column :yak_id, :integer
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
