class AdminController < ApplicationController
	before_filter :authenticate_user!

	def console
	end

	def edit_me
		@me = Me.first || Me.create
	end

	def update_me
		@me = Me.first
		@me.update_attributes(params.require(:me).permit(:content))
		redirect_to admin_edit_me_path
	end
end
