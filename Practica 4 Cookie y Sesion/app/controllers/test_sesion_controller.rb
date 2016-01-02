class TestSesionController < ApplicationController
    def welcome
    end

    def close
        session[:log] = false
        session[:name] = nil
        session[:surname] = nil
        session[:user] = nil
        redirect_to :controller => "test_sesion", :action => "start"
    end

    def start   
        if session[:log] == false 
            if request.post? and params[:user].present? and params[:password].present?
                session[:log] = true
                session[:name] = "Tomas Yussef"
                session[:surname] = "Galicia Guzman"
                session[:user] = "_tomas"
                redirect_to :controller => "test_sesion", :action => "welcome"
                cookies[:user] =
                    {
                        :value => "_tomas",
                        :expires => 1.year.from_now,
                        :domain => :all
                    }
            end
        else
            redirect_to :controller => "test_sesion", :action => "welcome"
        end
    end
end
