module UsersHelper

  def create_params(params)
    {
      name: params[:user][:name],
      email: params[:user][:email],
      password: params[:user][:password]
    }
  end

end
