class CommentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @product = Product.find(params[:product_id])
    @comments = Comment.all
  end

  def new
    @product = Product.find(params[:product_id])
    @comment = Comment.new
  end

  def edit
    @product = Product.find(params[:product_id])
    @comment = Comment.find(params[:id])
  end

  def create
    @product = Product.find(params[:product_id])
    @comment = Comment.new(comment_params)
    @comment.product = @product
    @comment.user = current_user
    if @comment.save
      redirect_to product_path(@product)
      flash[:notice] = "回复成功"
    else
      redirect_to product_path(@product)
    end
  end

  def update
    @product = Product.find(params[:product_id])
    @comment = Comment.find(params[:id])
    if @comment.save
      redirect_to product_path(@product)
      flash[:notice] = "修改成功"
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to product_path(@product)
    flash[:alert] = "删除成功"

  end


  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
