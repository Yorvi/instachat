module UsersHelper

  def fullname
    @user.first_name + " " + @user.last_name    
  end
  
end
