class Product < ApplicationRecord
    belongs_to :admin
    
    paginates_per 3

    enum :category, [:Electronics, :Cloths, :Toys, :Furniture, :"Smart Phones", :Cosmetics, :Kitchen, :Appliance]

    validates :name, presence: true, length: {minimum: 3, maximum: 50}
    validates :category, presence: true#, inclusion: { in: %w(electronics, cloths, toys, furniture, smart_phones)
    validates :price, presence: true
    
    # mount_uploader :image, ImageUploader #also you need to add column :image (sring) to products 

    has_one_attached :image #, dependent: :destroy
    has_rich_text :description
    # after_destroy :delete_images

    private

        # def delete_images
        #     FileUtils.remove_dir("public/uploads/product/image/#{self.id}") if File.directory?("public/uploads/product/image/#{self.id}")
        # end
end