class SessionsController < ApplicationController
  def new
   end

   def create
     user = User.find_by(email: params[:session][:email])
     if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:success] = "Heloo"
      redirect_to root_url
     else
       flash[:warning] = "Invalid Email or Password"
       render 'new'
     end
   end

   def destroy
    log_out user
    flash[:success] = " Bye bye "
    redirect_to root_url
   end


end
