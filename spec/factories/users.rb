Factory.sequence :username do |n|
  "username#{n}"
end

Factory.sequence :email do |n|
  "user#{n}@example.com"
end

Factory.define :user do |u|
  u.username              { Factory.next(:username) }
  u.email                 { Factory.next(:email) }  
  u.password              "testing123"
  u.password_confirmation "testing123"
end