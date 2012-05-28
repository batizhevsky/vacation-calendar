class DepartamentsController < ApplicationController
  # GET /departaments
  # GET /departaments.json
  def index
    @departaments = Departament.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @departaments }
    end
  end

  # GET /departaments/1
  # GET /departaments/1.json
  def show
    @departament = Departament.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @departament }
    end
  end

  # GET /departaments/new
  # GET /departaments/new.json
  def new
    @departament = Departament.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @departament }
    end
  end

  # GET /departaments/1/edit
  def edit
    @departament = Departament.find(params[:id])
  end

  # POST /departaments
  # POST /departaments.json
  def create
    @departament = Departament.new(params[:departament])

    respond_to do |format|
      if @departament.save
        format.html { redirect_to @departament, notice: 'Departament was successfully created.' }
        format.json { render json: @departament, status: :created, location: @departament }
      else
        format.html { render action: "new" }
        format.json { render json: @departament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /departaments/1
  # PUT /departaments/1.json
  def update
    @departament = Departament.find(params[:id])

    respond_to do |format|
      if @departament.update_attributes(params[:departament])
        format.html { redirect_to @departament, notice: 'Departament was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @departament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departaments/1
  # DELETE /departaments/1.json
  def destroy
    @departament = Departament.find(params[:id])
    @departament.destroy

    respond_to do |format|
      format.html { redirect_to departaments_url }
      format.json { head :no_content }
    end
  end
end
