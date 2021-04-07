class FriendshipsController < ApplicationController
  def create
    friend = User.find(params[:friend ])
    current_user.friendships.build(friend_id: friend.id)
    if current_user.save
      flash[:notice] = "You started following #{friend.first_name} #{friend.last_name}"
    else
      flash[:alert] = "Something went wrong! Please try again."
    end
    redirect_to my_friends_path
  end

  def destroy
    friendship = current_user.friendships.where(friend_id: params[:id]).first
    friendship.destroy
    flash[:notice] = "Stopped following!"
    redirect_to my_friends_path
  end
end
