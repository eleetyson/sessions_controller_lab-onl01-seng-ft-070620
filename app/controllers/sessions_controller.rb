class SessionsController < ApplicationController
  def new
  end

# log user in if they provided a name
# redirect to login if not
  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to "/"
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:name)
  end
end
