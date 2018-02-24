class Chef <ApplicationRecord
  validates :chefname, presence:true , length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email ,presence:true ,length: {maximum: 500},
            format:{with: VALID_EMAIL_REGEX }
  before_save { self.email = email.downcase }
  has_many :recipes
end
