class PracticeUnitsController < ApplicationController
  # GET /practice_units
  # GET /practice_units.xml
  def index
    @practice_units = PracticeUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @practice_units }
    end
  end

  # GET /practice_units/1
  # GET /practice_units/1.xml
  def show
    @practice_unit = PracticeUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @practice_unit }
    end
  end

  # GET /practice_units/new
  # GET /practice_units/new.xml
  def new
    @practice_unit = PracticeUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @practice_unit }
    end
  end

  # GET /practice_units/1/edit
  def edit
    @practice_unit = PracticeUnit.find(params[:id])
  end

  # POST /practice_units
  # POST /practice_units.xml
  def create
    @practice_unit = PracticeUnit.new(params[:practice_unit])

    respond_to do |format|
      if @practice_unit.save
        format.html { redirect_to(@practice_unit, :notice => 'Practice unit was successfully created.') }
        format.xml  { render :xml => @practice_unit, :status => :created, :location => @practice_unit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @practice_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /practice_units/1
  # PUT /practice_units/1.xml
  def update
    @practice_unit = PracticeUnit.find(params[:id])

    respond_to do |format|
      if @practice_unit.update_attributes(params[:practice_unit])
        format.html { redirect_to(@practice_unit, :notice => 'Practice unit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @practice_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /practice_units/1
  # DELETE /practice_units/1.xml
  def destroy
    @practice_unit = PracticeUnit.find(params[:id])
    @practice_unit.destroy

    respond_to do |format|
      format.html { redirect_to(practice_units_url) }
      format.xml  { head :ok }
    end
  end
end
