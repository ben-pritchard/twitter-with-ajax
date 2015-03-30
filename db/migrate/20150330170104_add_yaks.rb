class AddYaks < ActiveRecord::Migration
  def change
    create_table :yaks do |t|
      t.column :body, :string
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
