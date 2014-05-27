class Ability
  include CanCan::Ability

  def initialize(user)
   user ||= User.new
    if user.role? :admin # only myself will be set to this
      can :manage, :all
    elsif user.role? :user
        #edit, delete and write songs
      can :manage, [Song,Album]
    else 
      can :read, [Song,Album]
    end
  end
end
