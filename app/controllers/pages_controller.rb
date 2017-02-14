class PagesController < ApplicationController
  def batman
  end
  def superman
  end
  def batman_vs_superman 
  end
  def votos_batman
  	VotosBatman.create(name: params[:name], email: params[:mail])
  	redirect_to pages_batman_vs_superman_path, notice: "El nombre #{params[:a]} ha sido guardado"
  end
  def votos_superman
  	VotosSuperman.create(name: params[:name], email: params[:mail])
 	redirect_to pages_batman_vs_superman_path, notice: "El nombre #{params[:a]} ha sido guardado"
  end

  def votos
  	@b = VotosBatman.count
  	@s = VotosSuperman.count  	 	
  end
end
