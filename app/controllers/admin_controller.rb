class AdminController < ApplicationController
	before_filter :authenticate_user!

	def console
	end
end
