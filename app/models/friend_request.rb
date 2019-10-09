class FriendRequest < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User'

  def self.create_new 
    @user = User.all.sample
    @friend = User.all.sample

    if @user != @friend && !@user.friends.include?(@friend)
        FriendRequest.create(user: @user, friend: @friend)
    else 
        Friendship.create_new 
    end
  end 

end
