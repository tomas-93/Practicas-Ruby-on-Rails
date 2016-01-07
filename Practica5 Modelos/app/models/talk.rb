class Talk < ActiveRecord::Base
#Validaciones de título
#validates :titulo, :presence => {:message => "Usted debe ingresar un título"}, length: {minimum: 2, maximum: 50, :message => "El título debe tener entre 2 y 50 caracteres"}
    validates :name, :presence => {:message => "Debe ingresar un nombre a la tarea."}, length: {minimum: 5, :message => "El nombre debe tener como minimo 5 caracteres."}, length:{maximum: 20, :message => "El nombre debe tener como maximo 20 caracteres."};
#Validaciones de descripción
#validates :descripcion, :presence => {:message => "Usted debe ingresar una descripción"}, length: {minimum: 2, maximum: 4000, :message => "La descripción debe tener entre 2 y 4000 caracteres"}
    validates :description, :presence => {:message => "Defina el contenido de la tarea."}, length:{minimum:5, :message => "El contenido debe tener como minimo 5 caracteres."}, length:{maximum: 4000, :message => ""};
#Validaciones de prioridad
#validates :prioridad, :presence => {:message => "Usted debe ingresar una prioridad"}, :numericality => {:only_integer => true, :message => "La prioridad debe ser numérica"}
    validates :date, :presence => {:message => "Definir la caducidad de la tarea."};
end
