class SheetsController < ApplicationController
  before_action :find_sheet, only: [:show, :edit, :update, :destroy]

  def index
    @sheets = Sheet.all.order("created_at desc")
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
  end

  def create
    @sheet = Sheet.new(sheet_params)
    if @sheet.save
      redirect_to sheets_path
    else
      render :new
    end
  end

  def update
    if @sheet.update(sheet_params)
      redirect_to @sheet
    else
      render 'edit'
    end
  end

  def destroy
    @sheet.destroy
    redirect_to root_path
  end


  private

    def sheet_params
      params.require(:sheet).permit(:title, :body)
    end

    def find_sheet
      @sheet = Sheet.find(params[:id])
    end
end
