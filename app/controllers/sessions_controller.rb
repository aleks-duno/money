class SessionsController < ApplicationController
skip_before_filter :verify_authenticity_token, :only => :create

  def create
    user = User.find_or_create_by(:provider => auth_hash[:provider], :uid => auth_hash[:uid]) do |user|
      user.name = auth_hash[:info][:name]
    end
    
    if auth_hash[:info][:email] == "aleksa@managebac.com"
      session[:user_id] = user.id 
      redirect_to :transactions_index, notice: "Welcome back Aleks" 
    
    else
      redirect_to :root, notice: "Unauthorized user"
    end

  end

  def destroy
    reset_session
    redirect_to :root, notice: "Goodbye Aleks" 
  end

  private
  def auth_hash
    request.env["omniauth.auth"]

  end
end
