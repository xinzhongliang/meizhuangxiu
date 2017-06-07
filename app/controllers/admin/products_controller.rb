class Admin::ProductsController < ApplicationController
  layout "admin"
  before_action :authenticate_user!
  before_action :admin_required

  def index
    if params[:category].blank? && params[:pack].blank?
      @products = Product.all
    elsif
      @pack_id = Pack.find_by(name: params[:pack]).id
      @products = Product.where(:pack_id => @pack_id).order("created_at DESC")
    else
      @category_id = Category.find_by(name: params[:categaory]).id
      @products = Product.where(:category_id => @category_id).order("created_at DESC")
    end
  end

  def group
    if params[:pack].blank?
      @products = Product.all
    else
      @pack_id = Pack.find_by(name: params[:pack]).id
      @products = Product.where(:pack_id => @pack_id).order("created_at DESC")
    end
  end

  def new
    @product = Product.new
    @categories = Category.all.map { |c| [c.name, c.id] }
    @packs = Pack.all.map { |c| [c.name, c.id]}
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    @product.category_id = params[:category_id]
    @product.pack_id = params[:pack_id]
    if @product.save(product_params)
      redirect_to admin_products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all.map { |c| [c.name, c.id] }
    @packs = Pack.all.map { |c| [c.name, c.id]}

  end

  def update
    @product = Product.find(params[:id])
    @product.category_id = params[:category_id]
    @product.pack_id = params[:pack_id]
    if @product.update(product_params)
      redirect_to admin_products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to admin_products_path
  end

  def publish
    @product = Product.find(params[:id])
    @product.publish!
    redirect_to :back
  end

  def hide
    @product = Product.find(params[:id])
    @product.hide!
    redirect_to :back
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :quantity,
                                    :image, :category_id, :pack_id, :is_hidden)

  end
end
