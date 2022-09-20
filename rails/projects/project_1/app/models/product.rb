class Product < ApplicationRecord
    belongs_to :admin

    validates :name, presence: true, length: {minimum: 3, maximum: 50}
    validates :category, presence: true#, inclusion: { in: %w(electronics, cloths, toys, furniture, smart_phones)
    #enum :category, [:electronics, :cloths, :toys, :furniture, :smart_phones]
    validates :price, presence: true
    
    mount_uploader :image, ImageUploader

    after_destroy :delete_images

    private

        def delete_images
            FileUtils.remove_dir("public/uploads/product/image/#{self.id}") if File.directory?("public/uploads/product/image/#{self.id}")
        end
end