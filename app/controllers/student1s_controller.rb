class Student1sController < ApplicationController
  # GET /student1s
  # GET /student1s.json
  def index
    @student1s = Student1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @student1s }
    end
  end
  def main
  end
  
  
  

  # GET /student1s/1
  # GET /student1s/1.json
  def show
    @student1 = Student1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student1 }
    end
  end

  # GET /student1s/new
  # GET /student1s/new.json
  def new
    @student1 = Student1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student1 }
    end
  end

  # GET /student1s/1/edit
  def edit
    @student1 = Student1.find(params[:id])
  end

  # POST /student1s
  # POST /student1s.json
  def create
    @student1 = Student1.new(params[:student1])

    respond_to do |format|
      if @student1.save
        format.html { redirect_to @student1, notice: 'Student1 was successfully created.' }
        format.json { render json: @student1, status: :created, location: @student1 }
      else
        format.html { render action: "new" }
        format.json { render json: @student1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /student1s/1
  # PUT /student1s/1.json
  def update
    @student1 = Student1.find(params[:id])

    respond_to do |format|
      if @student1.update_attributes(params[:student1])
        format.html { redirect_to @student1, notice: 'Student1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @student1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student1s/1
  # DELETE /student1s/1.json
  def destroy
    @student1 = Student1.find(params[:id])
    @student1.destroy

    respond_to do |format|
      format.html { redirect_to student1s_url }
      format.json { head :no_content }
    end
  end
end
