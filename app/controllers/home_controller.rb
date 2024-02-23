class HomeController < ApplicationController
  def index
    p session[:user_id_2]
    cookies[:user_id] = { value: current_user.id, expires: 1.minute.from_now }
    cookies[:user_email] = current_user.email

    session[:user_id_2] = "yyyyyt"
  end
end
