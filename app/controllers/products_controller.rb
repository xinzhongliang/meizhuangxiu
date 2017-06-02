class ProductsController < ApplicationController
  impressionist :actions=>[:show]
  before_action :validate_search_key, only: [:search]

  def index
    if params[:category].blank?
      @products = case params[:order]
      when 'by_product_price'
          Product.all.order("price DESC")
      when 'by_product_quantity'
        Product.all.order("quantity DESC")
      else
        Product.all.recent
      end

    else
      @category_id = Category.find_by(name: params[:category]).id
      @products = Product.where(category_id:  @category_id)
    end
  end

  def show
    @product = Product.find(params[:id])
    @comment = Comment.new
    @photos = @product.photos.all
    if @product.is_hidden
      flash[:warning] = "该产品已下架."
      redirect_to root_path
    end

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
      @products = search_result.paginate(:page => params[:page], :per_page => 20 )
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
    params.require(:product).permit(:title, :description, :price, :quantity, :image, :category_id, :is_hidden)
  end

end
