class PeopleController < ApplicationController
  
  respond_to :html
  
  def show
    @person = Person.find(params[:id])
    respond_with(@person)
  end
  
  def new
    @person = Person.new
    respond_with(@person)
  end
  
  def create
    @person = Person.new(params[:person])

    respond_to do |format|
      if @person.save
        format.html { redirect_to(@person, :notice => 'Person was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end
  
end