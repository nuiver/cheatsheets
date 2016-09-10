class SheetsController < ApplicationController
  before_action :find_sheet, only: [:show, :edit, :update, :destroy]
  before_action :check_access
  helper_method :sort_column, :sort_direction


  def index

    @sheets = Sheet.select{ |i| @ids.include?(i.user_id) }

    if params[:search]
      @sheets = @sheets.search(params[:search]).order(created_at: :desc)
    else
      @sheets = @sheets.sort_by{ |sheet| sheet[:created_at]}
    end

    @tags = Tag.order("LOWER(title) asc")
  end

  def show

    @sheets = Sheet.select{ |i| @ids.include?(i.user_id) }

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
      respond_to do |format|
        format.html { redirect_to sheet_path(@sheet.id) }
        format.js
      end
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

  def check_access
    @ids = [User.find{ |x| x[:email] ==  'admin@test.com' }.id]
    @ids << current_user.id if current_user
  end

end
