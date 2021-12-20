class OmniauthCallbacksController < ApplicationController 
    
#Working with provider and uid
  # def twitter
  #   @user = Tuser.find_or_create_from_auth_hash(auth_hash)
  #   session[:user_id] = @user.id
  #   redirect_to root_url, notice: "Signed in!"
  # end

   def destroy
     session[:user_id] = nil
     redirect_to root_url, notice: "Signed out!"
   end

 #working   with uid and provider 
   def twitter
     @tuser = Tuser.where(uid: auth_hash[:uid],
                          provider: auth_hash[:provider], 
                          name: auth_hash[:info][:name],
                          username: auth_hash[:info][:nickname],
                          image: auth_hash[:info][:image],
                          token: auth_hash[:credentials][:token],
                          secret: auth_hash[:credentials][:secret]
                          ).first_or_create
     session[:user_id] = @tuser.id
     redirect_to root_path, notice: "Signed in!"
  end

  #Not working   
    #@tuser = Tuser.where(username: auth_hash.info.nickname).first_or_initialize
    
  #   @tuser = Tuser.where(
  #       name: auth_hash[:name],
  #       uid: auth_hash[:uid],
  #       image: auth_hash[:image],
  #       token: auth_hash[:token],
  #       secret: auth_hash[:secret],
  #       provider: auth_hash[:provider]
  #   ).first_or_create  

  
  #   session[:user_id] = @tuser.id
   #  redirect_to root_path, notice: "User created from twitter"
   #end
  
  # #Destroying the session
  # def destroy
  #   if current_user
  #     session.delete(:user_id)
  #     flash[:notice] = "Sucessfully logged out!"
  #   end
  #   redirect_to root_path
  # end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end