Factory.sequence :username do |n|
  "name_#{n}"
end

Factory.sequence :user do |n|
  "user#{n}"
end

Factory.define :user do |u|
  u.username              { Factory.next(:user) }
  u.email                 { Factory.next(:user) }  
end