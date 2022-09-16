class ProductsController < ApplicationController
    before_action :check_session
    before_action :set_user, only: %i[ index show new create edit update destroy]

    def index
        @product = @user.products

    end

    def show
        @product = @user.products.find_by(id: params[:id])
    end

    def new
        @product = @user.products.new

    end

    def create
        @product = @user.products.new(product_params)

        #respond_to do |format|
            if @product.save

                redirect_to product_path(@product.id), notice: "Product Added."
                # format.html { redirect_to demo_url(@demo), notice: "Demo was successfully created." }
                # format.json { render :show, status: :created, location: @demo }
            else
                render :new, status: :unprocessable_entity
                # format.html { render :new, status: :unprocessable_entity }
                # format.json { render json: @demo.errors, status: :unprocessable_entity }
            end
        #end

    end

    def edit
        @product = @user.products.find_by(id: params[:id])

    end

    def update
        @product = @user.products.find_by(id: params[:id])

        if @product.update(product_params)
            redirect_to product_path(@product), notice: "Product Updated."
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @product = @user.products.find_by(id: params[:id])

        @product.destroy
        
        redirect_to products_path, status: :see_other #303
    end

    private
        def check_session
            if session[:user_id]
                return true
            else
                redirect_to log_in_path, alert: "Please Login"
            end
        end

        def set_user
            @user = User.find_by(id: session[:user_id])
        end

        def product_params
            params.require(:product).permit(:name, :price, :category, :description)
        end
end