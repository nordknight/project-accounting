require 'spec_helper'

describe User do

  before { @user = User.new(email: "user@example.com", password: "Example Password", first_name: "Example User", last_name: "Example User", admin: false)  }
  subject { @user }

  
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:admin) }
end