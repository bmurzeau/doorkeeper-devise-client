class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :predicsis_uid
      t.integer :predicsis_access_token

      t.timestamps
    end
  end
end
