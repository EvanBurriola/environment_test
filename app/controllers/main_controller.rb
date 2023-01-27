class MainController < ApplicationController
  def index
    #render('index')
  end

  def about
    @created_by = "Evan"
    @id = params['id']
    @page = params[:page] #same
    #render('about')
  end

  def hello
    redirect_to(action: 'index')
  end

end
