class FormationsController < ApplicationController
  # GET /formations
  # GET /formations.json
  def index
    @formations = Formation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @formations }
    end
  end

  # GET /formations/1
  # GET /formations/1.json
  def show
    @formation = Formation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @formation }
    end
  end

  # GET /formations/new
  # GET /formations/new.json
  def new
    @formation = Formation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @formation }
    end
  end

  # GET /formations/1/edit
  def edit
    @formation = Formation.find(params[:id])
  end

  # POST /formations
  # POST /formations.json
  def create
    @formation = Formation.new(params[:formation])

    respond_to do |format|
      if @formation.save
        format.html { redirect_to @formation, notice: 'Formation was successfully created.' }
        format.json { render json: @formation, status: :created, location: @formation }
      else
        format.html { render action: "new" }
        format.json { render json: @formation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /formations/1
  # PUT /formations/1.json
  def update
    @formation = Formation.find(params[:id])

    respond_to do |format|
      if @formation.update_attributes(params[:formation])
        format.html { redirect_to @formation, notice: 'Formation was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @formation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formations/1
  # DELETE /formations/1.json
  def destroy
    @formation = Formation.find(params[:id])
    @formation.destroy

    respond_to do |format|
      format.html { redirect_to formations_url }
      format.json { head :ok }
    end
  end
end
