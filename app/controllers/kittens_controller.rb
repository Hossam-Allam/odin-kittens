class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def show
    @kitty = Kitten.find(params[:id])
  end
end
