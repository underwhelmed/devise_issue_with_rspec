require 'spec_helper'

describe User do
  it "is valid with valid information" do
     Factory.build(:user).should be_valid
   end

   it "is not valid without a username" do
     Factory.build(:user, :username => nil).should_not be_valid
   end

   it "is not valid without an email" do
     Factory.build(:user, :email => nil).should_not be_valid
   end

   it "is not valid with a blank username" do
     Factory.build(:user, :username => '').should_not be_valid
   end

   it "is not valid with a username shorter than 3 characters" do
     Factory.build(:user, :username => 'ab').should_not be_valid
   end

   it "is not valid with a username with invalid characters" do
     invalid_usernames.each do |invalid|
       Factory.build(:user, :username => invalid).should_not be_valid
     end
   end
  
   def invalid_usernames
     ["Hans Wurst","+49 221 Hans","Gebe ich nicht ein","        ","110<",""]
   end
end
