class ProductsController < ApplicationController
    before_action :authenticate_admin!, only: %i[ new create edit update destroy]
    before_action :set_admin, only: %i[ index show new create edit update destroy]
    before_action :convert_category_to_integer
    # PRODUCT_PER_PAGE = 3

    
    def index

        if admin_signed_in?
            if params[:search]
                @products = @admin.products.where("name LIKE ?", Product.sanitize_sql_like(params[:search])+"%")
                @products = @products.page(params[:page])
            else
                @products = @admin.products.page(params[:page])
            end
        else
            if params[:search]
                @products = Product.where("name LIKE ?", Product.sanitize_sql_like(params[:search])+"%")
                @products = @products.page(params[:page])
            else
                @products = Product.all.page(params[:page])
            end
        end        
    end


    def show
        @product = Product.find_by(id: params[:id])
    end


    def new
        @product = @admin.products.new

    end


    def create
        @product = @admin.products.new(product_params)

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
        @product = @admin.products.find_by(id: params[:id])

    end

    def update
        @product = @admin.products.find_by(id: params[:id])

        if @product.update(product_params)
            redirect_to product_path(@product), notice: "Product Updated."
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @product = Product.find_by(id: params[:id])

        @product.destroy
        
        redirect_to products_path, status: :see_other #303
    end

    private
        # def check_session
        #     if session[:user_id]
        #         return true
        #     else
        #         redirect_to log_in_path, alert: "Please Login"
        #     end
        # end

        def set_admin
            @admin = current_admin
        end

        # def total_pages(product_count)
        #     if( (product_count % PRODUCT_PER_PAGE) == 0)
        #         return (product_count / PRODUCT_PER_PAGE)
        #     else
        #         return (product_count / PRODUCT_PER_PAGE) + 1
        #     end
        # end

        def convert_category_to_integer
            params[:category] = params[:category].to_i
        end

        def product_params
            params.require(:product).permit(:name, :category, :price, :description, :image, :search)#, :page_number)
        end
end