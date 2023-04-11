class Apartment < ApplicationRecord
    belongs_to :user
    validates :bedrooms, :address, :city, :state, :square_footage, :price, :utilities, :pets, :image, :user_id, presence: true 

end
