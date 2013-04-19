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

  def new
    @subject = Subject.new
  end

  def create
    # Instantiate a new object using form parameters
    @subject = Subject.new(params[:subject])
    # Save the object
    if @subject.save
      # If save succeeds, redirect to the list action
      redirect_to(:action=>'list')
    else
      # If save fails, redisplay the form
      render('new')
    end

  end

  def edit
    @subject = Subject.find(params[:id])

  end

  def update
     # Find object using form parameters
    @subject = Subject.find(params[:id])
    # Update the object
    if @subject.update_attributes(params[:subject])
      # If update succeeds, redirect to the list action
      redirect_to(:action=>'show', :id => @subject.id)
    else
      # If save fails, redisplay the form
      render('edit')
    end
  end

  def delete
    @subject = Subject.find(params[:id])
  end

  def destroy
    Subject.find(params[:id]).destroy

    redirect_to(:action => 'list')
  end
  
end
