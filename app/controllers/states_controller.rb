class StatesController < ApplicationController
  
  before_action :require_login
  
  def show
  	@state = State.find(params[:id]) 
  	@municipalities = Municipality.where("clave_estado='#{params[:id]}'")
  end

	def getTop3
  		@municipalities = Municipality.where("clave_estado='#{params[:id]}'")
  		@top3 = @municipalities.order(homici2015: :desc).limit(3)
  		render :json => {
  			data: @top3
  		}
	end

	def municiChoice
		@municipality = Municipality.find_by_munici(municy_params[:munici])
		render :json => {
			data: @municipality
		}
	end
		


  def getTotal
  		homici2007 = State.find_by_clave_estado("#{params[:id]}").homici2007
  		homici2008 = State.find_by_clave_estado("#{params[:id]}").homici2008
  		homici2009 = State.find_by_clave_estado("#{params[:id]}").homici2009
  		homici2010 = State.find_by_clave_estado("#{params[:id]}").homici2010
  		homici2011 = State.find_by_clave_estado("#{params[:id]}").homici2011
  		homici2012 = State.find_by_clave_estado("#{params[:id]}").homici2012
  		homici2013 = State.find_by_clave_estado("#{params[:id]}").homici2013
  		homici2014 = State.find_by_clave_estado("#{params[:id]}").homici2014
  		homici2015 = State.find_by_clave_estado("#{params[:id]}").homici2015  	
	  	render :json => {
	  		homici2007: homici2007, 
	  		homici2008: homici2008, 
	  		homici2009: homici2009, 
	  		homici2010: homici2010, 
	  		homici2011: homici2011, 
	  		homici2012: homici2012, 
	  		homici2013: homici2013, 
	  		homici2014: homici2014, 
	  		homici2015: homici2015, 
	  	}
  end

  def getStates
  	states = State.all.pluck(:estado)
  	render :json => {states: states}
  end

  def getMunicipalities
  	stateMunicipalities = Municipality.where("clave_estado='#{params[:id]}'").pluck(:munici)
  	render :json => {municipalities: stateMunicipalities}
  end

  def targetState
    if State.find_by_estado(targetState_params[:estado])
      targetState = State.find_by_estado(targetState_params[:estado])
      redirect_to "/estado/#{targetState[:clave_estado]}"
    else
      redirect_to "/"
    end
  end

  private

  def municy_params
  	params.require(:municipality).permit(:munici)
  end

  def targetState_params
  	params.require(:state).permit(:estado)
  end

end

