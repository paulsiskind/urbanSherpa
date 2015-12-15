class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  # before_create :associate_user

  # def associate_user
  #   self.user_id = current_user.id
  # end
end
