# A User object
class User

  attr_reader :role

  def initialize( role = "default role" )
    @role = role
  end

  def in_role?(role)
    role == @role
  end

  def assign_role(role)
    @role = role
  end

end
