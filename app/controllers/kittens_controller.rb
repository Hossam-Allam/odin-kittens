class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def show
    @kitty = Kitten.find(params[:id])
  end

  def new
    @kitty = Kitten.new
  end

  def create
    @kitty = Kitten.new(kitten_params)
    if @kitty.save
      redirect_to @kitty
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end

  def edit
    @kitty = Kitten.find(params[:id])
  end

  def update
    @kitty = Kitten.find(params[:id])
      if @kitty.update(kitten_params)
        flash[:success] = "Kitten was successfully updated"
        redirect_to @kitty
      else
        flash[:error] = "Something went wrong"
        render :edit
      end
  end

  def destroy
    @kitty = Kitten.find(params[:id])
    if @kitty.destroy
      flash[:success] = "Kitten was successfully deleted."
      redirect_to kittens_path
    else
      flash[:error] = "Something went wrong"
      redirect_to @kitty
    end
  end


  private

  def kitten_params
    params.require(:kitten).permit(
      :id,
      :name,
      :age,
      :cuteness,
      :softness
    )
  end
end
