class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # Guest user, not logged in

    if user
      can :manage, :all
    else
    end
  end
end
