class SessionController < ApplicationController
  def new
    
  end

  def create
    admin = Admin.find_by name: params[:session][:name].downcase
    if admin && admin.authenticate(params[:session][:password])  #duoc cc boi has_secure_password
      flash[:success] = "Login Successfully"
      log_in admin
      redirect_to product

    else 
      flash[:danger] = "Invalid email/password combination"
      render :new
    end
  end

  def destroy
  end


end
