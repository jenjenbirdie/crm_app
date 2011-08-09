class IndividualsController < ApplicationController
  # GET /individuals
  # GET /individuals.xml
  before_filter :load_company
  
  def index
    @individuals = Individual.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @individuals }
    end
  end

  # GET /individuals/1
  # GET /individuals/1.xml
  def show
    @individual = Individual.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @individual }
    end
  end

  # GET /individuals/new
  # GET /individuals/new.xml
  def new
    @individual = Individual.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @individual }
    end
  end

  # GET /individuals/1/edit
  def edit
    #@individual = Individual.find(params[:id])
	@individual = @company.individuals.find(params[:id])
  end

  # POST /individuals
  # POST /individuals.xml
  def create
   #@individual = Individual.new(params[:individual])
   @individual = @company.individuals.new(params[:individual])
   if @individual.save
	redirect_to @company, :notice => "Individual successfully added."
   else
	redirect_to @company, :notice => "Unable to add individual."
   end

   # respond_to do |format|
   #   if @individual.save
   #     format.html { redirect_to(@individual, :notice => 'Individual was successfully created.') }
   #     format.xml  { render :xml => @individual, :status => :created, :location => @individual }
   #   else
   #     format.html { render :action => "new" }
   #     format.xml  { render :xml => @individual.errors, :status => :unprocessable_entity }
   #   end
   # end
  end

  # PUT /individuals/1
  # PUT /individuals/1.xml
  def update
    #@individual = Individual.find(params[:id])
	@individual = @company.individuals.new(params[:individual])
	
	
	#@individual = @company.individuals.find(params[:id])

   #if @individual.save
	#redirect_to @company, :notice => "Individual successfully added."
   #else
	#redirect_to @company, :notice => "Unable to add individual."
  # end
	
    respond_to do |format|
      if @individual.update_attributes(params[:individual])
        format.html { redirect_to(@individual, :notice => 'Individual was successfully updated.') }
        format.xml  { head :ok }
      else
       format.html { render :action => "edit" }
        format.xml  { render :xml => @individual.errors, :status => :unprocessable_entity }
     end
    end
  end

  # DELETE /individuals/1
  # DELETE /individuals/1.xml
  def destroy
    #@individual = Individual.find(params[:id])
	@individual = @company.individuals.find(params[:id])
    @individual.destroy
	redirect_to @company, :notice => "Individual deleted."

    #respond_to do |format|
    #  format.html { redirect_to(individuals_url) }
    #  format.xml  { head :ok }
   # end
  end
  
  private
	def load_company
		@company = Company.find(params[:company_id])
	end
  
end
