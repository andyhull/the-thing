class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new # guest user (not logged in)
      if user.admin?
        can :manage, :all
      elsif user.user?
        can :read, :all
      else
        can :create, Thing
        can :read, :all
      end
  end
end
