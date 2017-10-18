class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.strings :username
      t.strings :password
      t.decimal :balance
    end
  end
end
