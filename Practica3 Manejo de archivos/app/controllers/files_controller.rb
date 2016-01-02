class FilesController < ApplicationController
  Url_comments = "public/comments/comment.txt"
  Url_files = "public/files/"
  def up_file
      @format = false
      if request.post?
          #archivo subido por el usuarios
          file = params[:file_in_proccess]
          #nombre original del archivo
          file_name = file.original_filename
          #directorio donde se va a guardar
          file_url = Url_files
          #extecion de archivo
          extends = file_name.slice(file_name.rindex("."), file_name.length).downcase
          #Verificar si el archivo tenga la extencion correcta
          if extends == ".pdf" or extends == ".doc" or extends == ".docx"
              #ruta del archivo
              path = File.join(file_url, file_name)
              #crear el archivo en el directorio
              #la variable flag sera true si se guarda correctamente
              flag = File.open(path, "wb"){|f| f.write(file.read)}
              if flag
                  uploadFile = "Se subio documento"
              else
                  uploadFile = "Error al subir el documento"
              end
              #rederigir a la lista de archivos
              redirect_to :controller => "files", :action => "list_file", :uploadFile => uploadFile
          else 
              @format = true
          end  
      end
  end
  def list_file
      @message = ""
      @urlDirFile = Dir.entries(Url_files)
      if params[:uploadFile].present?
          @message = params[:uploadFile]
      elsif params[:removeFile].present?
          @message = params[:removeFile]
      end
      if File.exist?(Url_comments)
          @comments = File.read(Url_comments)
      else
          @comments = ""
      end
  end
  def delete_file
      @remove = params[:name_file]
      url_file = Url_files + @remove
      if File.exist?(url_file)
          flag = File.delete(url_file);
      end
      
      if flag
          removeFile = "Se elimino"
      else 
          removeFile = "Error al eliminar, no se encontro archivo"
      end  
      redirect_to :controller => "files", :action => "list_file", :removeFile => :removeFile
  end
    
  def save_file
      if request.post?
          string = params[:comment]
          File.open(Url_comments, "wb"){
              |var|
              var.write(string)
              var.close
          }
          redirect_to :controller =>"files", :action => "list_file"
      end
      if File.exist?(Url_comments)
          @comments = File.read(Url_comments)
      else
          @comments = "No hay Comentarios"
      end
      
  end
end
