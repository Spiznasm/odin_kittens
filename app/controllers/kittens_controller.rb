class KittensController < ApplicationController

  before_action :set_kitten, only: [:show, :edit, :update, :destroy]

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)

    respond_to do |format|
      if @kitten.save
        format.html { redirect_to @kitten, notice: "Look a brand new kitten!"}

      else
        format.html { render :new }

      end
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json { render json: @kitten }
    end
  end

  def edit
  end

  def update
    
    respond_to do |format|
      if @kitten.update_attributes(kitten_params)
        format.html { redirect_to @kitten, notice: "#{@kitten.name} has been updated" }

      else
        format.html { render :edit }
      end
    end
  end

  def index
    @kittens = Kitten.all
    respond_to do |format|
      format.html
      format.json { render json: @kittens }
    end
  end

  def destroy
    
    @kitten.destroy
    respond_to do |format|
      format.html { redirect_to kittens_url, notice: "A kitten has been destroyed... NOOOOO!" }

    end
  end

  private

  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end

  def set_kitten
    @kitten = Kitten.find(params[:id])
  end
end
