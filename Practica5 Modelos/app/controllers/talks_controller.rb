class TalksController < ApplicationController
    def list
        @listElement = Task.all();
    end
    
    def create
        if request.post?
            @task = Task.create(name:params[:name], content:params[:description], date:params[:date]);
            redirect_to :controller => "talks", :action => "list";
        end
    end

    def remove
        if request.get?
            @name = params[:name];
            @task = Task.find(params[:var]);
            @task.destroy();
            @flag = true;
            redirect_to :back;
        end
    end

    def edit
        if request.put? 
            @task = Task.find(params[:var]);
        elsif request.post?
            @task = Task.find(params[:var]);
            @task.update_attributes({:name => params[:name], :content => params[:content],:date => params[:date]});
            redirect_to :controller =>"talks", :action => "list";
        end
    end
end
