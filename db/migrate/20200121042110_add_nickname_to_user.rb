class AddNicknameToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nickname, :string, default: "anonymous"
  end
end
