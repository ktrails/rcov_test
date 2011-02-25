require 'spec/spec_helper'

describe( User) do

  it "should get a default role" do
    user = User.new
    user.should be_in_role("default role")
  end

  it "should be in any roles assigned to it" do
    user = User.new("assigned role")
    user.should be_in_role("assigned role")
  end

  it "should NOT be in any roles not assigned to it" do
    user = User.new
    user.should_not be_in_role("unassigned role")
  end

  it "should have the role assigned to it" do
    role = 'new role'
    user = User.new
    user.should_not be_in_role(role)

    user.assign_role(role)
    user.should be_in_role(role)
    user.role.should be(role)
  end

end
