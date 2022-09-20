class Admin < ApplicationRecord
  validates :first_name, presence: true, length: {minimum: 3, maximum: 20}
  validates :last_name, presence: true, length: {minimum: 1, maximum: 15}
  validates :contact, presence: true, numericality: { only_integer: true }, length: {is: 10}, format: {with: %r(\A[6-9]\d{9}\z)}
  
  # Include default devise modules. Others available are:
  #  and :omniauthable
  devise :database_authenticatable,   # (password in hash) --> done
         :registerable,               # (try editing and delete admin)
         :recoverable,                # (forgot password) --> done
         :rememberable,               # (remeber me for that much days OR timeoutable will work) --> done
         :validatable,                # (pre defined validations for email and pass : can be turned off for custom validations) -> done
         :confirmable,                # (confirmation mail for account creation) --> done
         :lockable,                   # (locks a account after several wrong login attempts) --> done
         :timeoutable,                # (auto expiring when not login for long) --> done
         :trackable                   # (remebers ip, count and time) --> done

  has_many :products, dependent: :destroy
end
