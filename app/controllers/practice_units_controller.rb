class PracticeUnitsController < ApplicationController

  before_filter :authenticate_user!

  load_and_authorize_resource :practice_unit

  expose(:units) { Unit.order(:units) }
  
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create

    if @practice_unit.save
      redirect_to(@practice_unit, :notice => 'Practice unit was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    if @practice_unit.update_attributes(params[:practice_unit])
      redirect_to(@practice_unit, :notice => 'Practice unit was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @practice_unit.destroy

    redirect_to(practice_units_url)
  end
end
