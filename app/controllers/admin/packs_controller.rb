class Admin::PacksController < ApplicationController
  layout "admin"
  before_action :authenticate_user!
  before_action :admin_required

  def index
    @packs = Pack.all
  end

  def new
    @pack = Pack.new
  end

  def create
    @pack = Pack.new(pack_params)
    if @pack.save
      redirect_to admin_packs_path
    else
      render :new
    end
  end

  def edit
    @pack = Pack.find(params[:id])
  end

  def update
    @pack = Pack.find(params[:id])
    if @pack.update(pack_params)
      redirect_to admin_pack_path
    else
      render :edit
    end
  end

  def destroy
    @pack = Pack.find(params[:id])
    @pack.destroy
    redirect_to admin_packs_path, warning: "你已经删除这个套餐"
  end

  private

  def pack_params
    params.require(:pack).permit(:name)
  end
end
