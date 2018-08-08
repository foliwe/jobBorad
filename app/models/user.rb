class User < ApplicationRecord
  has_many :job_applications, dependent: :destroy
  has_one :user_profile ,dependent: :destroy
  has_many :employment_histories, through: :user_profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
    after_create :init_profile

  def init_profile
    self.create_user_profile!
  end

  
end
