class FromsController < ApplicationController
  def action_post
      if request.post?
          @id = params[:code]
          @name = params[:name]
          @surname = params[:surname]
          @age = params[:age]
          checkData
      else 
          checkData
      end
  end

  def action_get
      @id = params[:code]
      @name = params[:name]
      @surname = params[:surname]
      @age = params[:age]
      checkData
  end
    
  def checkData
      if !@id
          @id = "No ingreso id"
      end 
      if !@name
          @name = "No ingreso nombre"
      end
      if !@surname
          @surname = "No ingreso apellidos"
      end
      if !@age
          @age = "No ingreso edad"
      end 
  end
end
