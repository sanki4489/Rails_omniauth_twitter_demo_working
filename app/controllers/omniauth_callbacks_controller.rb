class OmniauthCallbacksController < ApplicationController
  def twitter
    @tuser = Tuser.where(uid: auth_hash[:uid], provider: auth_hash[:provider], name: auth_hash[:nickname]).first_or_create
    session[:user_id] = @tuser.id

    # tuser = Tuser.where(name: auth.info.name).first_or_initialize
    # tuser.update(
    #     provider: auth.info.provider,
    #     name: auth.info.name,
    #     uid: auth.info.uid,
    # )  
    
    redirect_to root_path, notice: "User created from twitter"
  end
  def destroy
    if current_user
      session.delete(:user_id)
      flash[:notice] = "Sucessfully logged out!"
    end
    redirect_to root_path
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end