class SubjectsController < ApplicationController

  # handle url access without action
  def index
  	# call list action
  	list

  	# default it is going to try to render 'index' template
  	# overwite with this
  	render('list')
  end

  def list
    @subjects = Subject.order("subjects.position ASC")
  end
  
  def show
    @subject = Subject.find(params[:id])
  end
  
end
