class BlogEntriesController < ApplicationController
  # GET /blog_entries
  # GET /blog_entries.json
  def index
    @blog_entries = BlogEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blog_entries }
    end
  end

  # GET /blog_entries/1
  # GET /blog_entries/1.json
  def show
    @blog_entry = BlogEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blog_entry }
    end
  end

  # GET /blog_entries/new
  # GET /blog_entries/new.json
  def new
    @blog_entry = BlogEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blog_entry }
    end
  end

  # GET /blog_entries/1/edit
  def edit
    @blog_entry = BlogEntry.find(params[:id])
  end

  # POST /blog_entries
  # POST /blog_entries.json
  def create
    @blog_entry = BlogEntry.new(params[:blog_entry])

    respond_to do |format|
      if @blog_entry.save
        format.html { redirect_to @blog_entry, notice: 'Blog entry was successfully created.' }
        format.json { render json: @blog_entry, status: :created, location: @blog_entry }
      else
        format.html { render action: "new" }
        format.json { render json: @blog_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blog_entries/1
  # PUT /blog_entries/1.json
  def update
    @blog_entry = BlogEntry.find(params[:id])

    respond_to do |format|
      if @blog_entry.update_attributes(params[:blog_entry])
        format.html { redirect_to @blog_entry, notice: 'Blog entry was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @blog_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_entries/1
  # DELETE /blog_entries/1.json
  def destroy
    @blog_entry = BlogEntry.find(params[:id])
    @blog_entry.destroy

    respond_to do |format|
      format.html { redirect_to blog_entries_url }
      format.json { head :ok }
    end
  end
end
