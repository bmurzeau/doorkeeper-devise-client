class ChangeThatAccessTokenBro < ActiveRecord::Migration
  def change
    remove_column :users, :predicsis_access_token
    add_column :users, :predicsis_access_token, :string
  end
end
