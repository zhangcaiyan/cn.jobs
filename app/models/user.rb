class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  include Devise::Async::Model  

  validates :email, presence: true, uniqueness: true, format: { with: RubyRegex::Email }
  validates :password, presence: true, confirmation: true, if: :password_required?


  protected

  def password_required?
    !persisted? || !password.nil? || !password_confirmation.nil?
  end 
end
