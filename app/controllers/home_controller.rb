class HomeController < ApplicationController
	
	before_action :require_login

	before_action :set_auth
	
	def index
		@states = State.all
		states = @states
	end

	def data
		states = State.all
		render :json => states
	end

	def topStates
		chihuahua = State.find_by_estado("Chihuahua")
		guerrero = State.find_by_estado("Guerrero")
		michoacan = State.find_by_estado("Michoacán")
		sinaloa = State.find_by_estado("Sinaloa")
		render :json => {
			chihuahua: chihuahua,
			guerrero: guerrero,
			michoacan: michoacan,
			sinaloa: sinaloa
		}
	end

	def nationalMapData
		data = [
	         {
	             "hc-key": "mx-3622",
	             "value": 0
	         }
	     ]
	    estados = State.all
	    if params[:year] == "2015"
		    estados.each do |estado|
		     	data << {
	             "hc-key": estado.iso_code,
	             "value": estado.homici2015.to_i
		     	}
		    end
		elsif params[:year] == "2014"
		    estados.each do |estado|
		     	data << {
	             "hc-key": estado.iso_code,
	             "value": estado.homici2014.to_i
		     	}
		    end
		elsif params[:year] == "2013"
		    estados.each do |estado|
		     	data << {
	             "hc-key": estado.iso_code,
	             "value": estado.homici2013.to_i
		     	}
		    end
		elsif params[:year] == "2012"
		    estados.each do |estado|
		     	data << {
	             "hc-key": estado.iso_code,
	             "value": estado.homici2012.to_i
		     	}
		    end
		elsif params[:year] == "2011"
		    estados.each do |estado|
		     	data << {
	             "hc-key": estado.iso_code,
	             "value": estado.homici2011.to_i
		     	}
		    end
		elsif params[:year] == "2010"
		    estados.each do |estado|
		     	data << {
	             "hc-key": estado.iso_code,
	             "value": estado.homici2010.to_i
		     	}
		    end
		elsif params[:year] == "2009"
		    estados.each do |estado|
		     	data << {
	             "hc-key": estado.iso_code,
	             "value": estado.homici2009.to_i
		     	}
		    end
		elsif params[:year] == "2008"
		    estados.each do |estado|
		     	data << {
	             "hc-key": estado.iso_code,
	             "value": estado.homici2008.to_i
		     	}
		    end
		elsif params[:year] == "2007"
		    estados.each do |estado|
		     	data << {
	             "hc-key": estado.iso_code,
	             "value": estado.homici2007.to_i
		     	}
		    end
		end
	    render :json => {data: data}
	end

	private

	def set_auth
		@auth = session[:omniauth] if session[:omniauth]
	end

end
