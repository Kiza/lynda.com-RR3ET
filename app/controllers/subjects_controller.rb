class SubjectsController < ApplicationController

  def list
    @subjects = Subject.order("subjects.position ASC")
  end
  
  def show
    
  end
  
end
