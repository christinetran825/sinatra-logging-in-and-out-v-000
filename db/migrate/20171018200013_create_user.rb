class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.strings :username
      t.strings :password
      t.integers :balance
    end
  end
end
