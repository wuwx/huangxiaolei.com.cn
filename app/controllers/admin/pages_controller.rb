class Admin::PagesController < ApplicationController
  
  before_filter :authenticate_user!
  before_action :set_page, only: [:show, :edit, :update, :destroy]
  
  def index
    @pages = Page.all
  end
  
  def new
    @page = Page.new
  end
  
  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to [:edit, :admin, @page], notice: 'Page was successfully created.'
    else
      render action: 'new'
    end
  end
  
  def update
    if @page.update(page_params)
      redirect_to [:edit, :admin, @page], notice: 'Page was successfully updated.'
    else
      render action: 'edit'
    end
  end
  
  private
    def page_params
      params.require(:page).permit(:title, :content)
    end
    def set_page
      @page = Page.find(params[:id])
    end
end
