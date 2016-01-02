class TestCookiesController < ApplicationController
  def identify  
      if request.post?   
          if params[:User].present?
              cookies[:user] = {
                  :value => params[:User],
                  :expires => 1.year.from_now,
                  :domain => :all
                  }
          else
              cookies.delete(:user, :domain => :all)
          end
          redirect_to :controller => "test_cookies", :action => "identify" 
      elsif defined?(cookies[:user])
          @user = cookies[:user]
      else
          @user = false
      end
  end
end
