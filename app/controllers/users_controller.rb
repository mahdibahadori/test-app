class UsersController < ApplicationController

  def index
    user = User.last   
    if user.is_admin      
      render 'pages/show'
    else    
      user.driver_id = user.id 
      user.save
      render 'pages/index'
    end    
  end

  def show
  end
end
