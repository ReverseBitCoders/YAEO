class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.role? :superadmin
      can :manage, :all
    elsif user.role? :user
      can :read, [Event]
      can :create, [Event]
      can :update, Event, :user_id => user.id
    end
  end
end
