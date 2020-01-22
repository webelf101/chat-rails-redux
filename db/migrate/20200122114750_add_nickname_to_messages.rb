class AddNicknameToMessages < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :nickname, :string
  end
end
