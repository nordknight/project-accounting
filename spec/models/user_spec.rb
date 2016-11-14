require 'spec_helper'

describe User do

  subject { create(:user)}

  its(:email) { should == 'test@test.by'}
  its(:password) { should == 'password'}
  its(:first_name) { should == 'John'}
  its(:last_name) { should == 'Smith'}
  it { should_not be_admin}
end