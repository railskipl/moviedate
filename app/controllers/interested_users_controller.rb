class InterestedUsersController < ApplicationController
 before_filter :authenticate, :only => [:edit, :update,:index]
    before_filter :correct_user, :only => [:edit, :update]
  
	def index
      @interested_users = InterestedUser.all
      
      respond_to do |format|
        format.html
        format.json { render json: @interested_users }
    end
        
  end



  def create
   @interested_user = InterestedUser.new(params[:interested_user])
   if @interested_user.save 
     sign_in @interested_user
    redirect_to user_root_path
  else
   @title = "Sign up"
   render 'new'
 end
 
end

def new
    @interested_user = InterestedUser.new
    @title="Sign up"
  end

    
  private
  def authenticate
    deny_access unless signed_in?
  end
  
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_path) unless current_user=(@user)
  end



end
