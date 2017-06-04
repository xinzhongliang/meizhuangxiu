class ProductsController < ApplicationController
  impressionist :actions=>[:show]
  before_action :validate_search_key, only: [:search]

  def index


    if params[:category].blank? && params[:pack].blank?
      @products = Product.where(:is_hidden => false)
    elsif params[:pack].blank?
      @category_id = Category.find_by(name: params[:category]).id
      @products = Product.where({:is_hidden => false, :category_id => @category_id})
    elsif params[:category].blank?
      @pack_id = Pack.find_by(name: params[:pack]).id
      @products = Product.where({:is_hidden => false, :pack_id => @pack_id})
    else
      @pack_id = Pack.find_by(name: params[:pack]).id
      @category_id = Category.find_by(name: params[:category]).id
      @products = Product.where(:is_hidden => false,:pack_id => @pack_id,:category_id => @category_id).order("created_at DESC")
    end
  end

  def show
    @product = Product.find(params[:id])
    @comment = Comment.new
    if @product.is_hidden
      flash[:warning] = "该产品已下架."
      redirect_to root_path
    end
  end

  def group
    @products = Product.where(:is_hidden => false).order("created_at DESC")
  end

  def pack
    @products = Product.where(:is_hidden => false).order("created_at DESC")
  end

  def add_to_cart
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)
      flash[:notice] = "你已成功计将 #{@product.title}加入购物车"
    else
      flash[:warning] = "你的购物车内已有此物品"
    end
    redirect_to :back
  end

  def search
    if @query_string.present?
      search_result = Product.ransack(@search_criteria).result(:distinct => true)
      @products = search_result.paginate(:page => params[:page], :per_page => 5 )
    end
  end


  protected

  def validate_search_key
    @query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?
    @search_criteria = search_criteria(@query_string)
  end

  def search_criteria(query_string)

    { title_cont: query_string }

  end


  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :quantity, :image, :category_id, :pack_id, :is_hidden)
  end

end
