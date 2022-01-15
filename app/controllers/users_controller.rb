class UsersController < ApplicationController
  include UsersHelper
  def create
    render('home/signup')
  end

  def create_user
    user = User.find_by(email: params[:user][:email])
    if user.present?
      flash.now[:danger] = 'Email already in use'
      render('home/signup') and return
    end

    user = User.create(create_params(params))
    Profile.create(user: user)
    flash.now[:success] = 'Account Created Successfully'
    render('sessions/new')
  end
end
