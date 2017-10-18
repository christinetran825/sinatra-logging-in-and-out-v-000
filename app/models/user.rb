class User < Application::Base

  create_table :users do |t|
    t.strings :username
    t.strings :password
    t.integers :balance
  end
end