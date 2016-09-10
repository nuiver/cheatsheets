class SheetsController < ApplicationController
  before_action :find_sheet, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  def index
    if params[:search]
      @sheets = Sheet.search(params[:search]).order(created_at: :desc)
    else
      @sheets = Sheet.all.order("created_at desc")
    end

    @tags = Tag.order("LOWER(title) asc")
  end

  def show
    @sheet = Sheet.find(params[:id])
    if params[:tag].nil?
      @tag = nil
    else
      @tag = Tag.find(params[:tag])
    end

    @tags = Tag.order("LOWER(title) asc")
  end

  def new
    @sheet = Sheet.new

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @sheet = Sheet.new(sheet_params)

    if @sheet.save
      format.html { redirect_to sheet_path(@sheet) }
      format.js
    else
      render :new
    end
  end

  def update
    @sheet = Sheet.find(params[:id])

    if @sheet.update(sheet_params)
      respond_to do |format|
        format.html {redirect_to sheet_path(@sheet)}
        format.js
      end
    else
      render 'edit'
    end
  end

  def destroy
    @sheet.destroy
    redirect_to root_path, notice: "Sheet was successfully deleted!"
  end

  private

  def sheet_params
    params.require(:sheet).permit(:title, :body, {:tag_ids => []})
  end

  def find_sheet
    @sheet = Sheet.find(params[:id])
  end

  def sortable_columns
  ["created_at"]
  end

  def sort_column
  sortable_columns.include?(params[:column]) ? params[:column] : "created_at"
  end

  def sort_direction
  %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
  end
end
