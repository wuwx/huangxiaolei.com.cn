class HomeController < ApplicationController
	
	def index
	end

  def me
  	@me = Me.first
  end
  
end
