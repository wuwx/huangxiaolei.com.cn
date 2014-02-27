class AdminController < ApplicationController
	before_filter :authenticate_user!

	def console
	end

	def edit_me
		@me = Me.first
		if @me == nil
			@me = Me.new
			@me.save
		end
	end

	def update_me
		@me = Me.first
		@me.update_attributes(params.require(:me).permit(:content))
		redirect_to admin_edit_me_path
	end
end
