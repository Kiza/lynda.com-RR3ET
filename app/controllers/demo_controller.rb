class DemoController < ApplicationController
  
  
  def index
    # render the template that you would render DEFAULT for 'hello'
    # render(:action => 'hello')
    
    # render the template from 'views' folder
    # render(:template => 'demo/hello')
    
    # redirect_to(:action => 'other_hello')
    
  end
  
  def hello
    # this is not the DEFAULT template would be rendered for 'hello'
    # render(:text => 'hello world!')
    
    # redirect_to("http://www.google.com")
    
    @array = [1,2,3,4,5]
    @id = params[:id]
    @page = params[:page].to_i 
  end
  
  def other_hello
    render(:text => 'hello world!')
  end
  
end
