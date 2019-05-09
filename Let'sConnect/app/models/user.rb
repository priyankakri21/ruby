class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :docs    
  
  has_one :profile
end
# require "test/unit"

# require "tc_test_case_file"
# require "tc_test_case_file"