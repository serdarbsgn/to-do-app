class TodoCategoriesController < ApplicationController
  before_action :set_todo_category, only: [:show, :edit, :update, :destroy]

  # GET /todo_categories
  # GET /todo_categories.json
  def index
    @todo_categories = TodoCategory.all
  end

  # GET /todo_categories/1
  # GET /todo_categories/1.json
  def show
  end

  # GET /todo_categories/new
  def new
    @todo_category = TodoCategory.new
  end

  # GET /todo_categories/1/edit
  def edit
  end

  # POST /todo_categories
  # POST /todo_categories.json
  def create
    @todo_category = TodoCategory.new(todo_category_params)

    respond_to do |format|
      if @todo_category.save
        format.html { redirect_to @todo_category, notice: 'Todo category was successfully created.' }
        format.json { render :show, status: :created, location: @todo_category }
      else
        format.html { render :new }
        format.json { render json: @todo_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo_categories/1
  # PATCH/PUT /todo_categories/1.json
  def update
    respond_to do |format|
      if @todo_category.update(todo_category_params)
        format.html { redirect_to @todo_category, notice: 'Todo category was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo_category }
      else
        format.html { render :edit }
        format.json { render json: @todo_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo_categories/1
  # DELETE /todo_categories/1.json
  def destroy
    @todo_category.destroy
    respond_to do |format|
      format.html { redirect_to todo_categories_url, notice: 'Todo category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_category
      @todo_category = TodoCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def todo_category_params
      params.require(:todo_category).permit(:category_id, :todo_id)
    end
end
