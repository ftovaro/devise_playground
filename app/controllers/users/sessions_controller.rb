class Users::SessionsController < Devise::SessionsController
  def create
    super do |user|
    end
  end
end
