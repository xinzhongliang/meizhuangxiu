class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def admin_required
    if !current_user.admin?
      redirect_to "/", alert: "Your are not admin."
    end
  end

  helper_method :current_cart

  def current_cart
    @current_cart ||= find_cart
  end

  private

  def find_cart
    cart = Cart.find_by(id: session[:cart_id])
    if cart.blank?
      cart = Cart.create
    end
    session[:cart_id] = cart.id
    return cart
  end

  before_filter :set_search

  def set_search
  @q= Product.search(params[:q])
  end
end
