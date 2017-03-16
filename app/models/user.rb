class User < ApplicationRecord
  # Direct associations

  has_many   :payments,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  has_many   :payment_informations,
             :dependent => :destroy

  belongs_to :payment_information

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
