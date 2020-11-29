class Category < ApplicationRecord
    include ActiveModel::ForbiddenAttributesProtection
    def user_params
        params.require(:name).permit(:name)
      end
    has_many :posts
end
