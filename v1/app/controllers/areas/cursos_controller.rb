class Areas::CursosController < ApplicationController

  def index
    @cursos = @area.cursos
  end
  def show
    @curso = @area.cursos.find(params[:id])
  end

  private 
    def set_area
      @area = Area.find(params[:area_id])
    end
    
    def curso_params
      params.require(:curso).permit(:nombre_curso)
    end
    
    def curso_params_update
      params.require(:curso).permit(:nombre_curso)    
    end
  end
