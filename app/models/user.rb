class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :peer
  has_many :ventures
  validates_uniqueness_of :username
  validates_uniqueness_of :email
  validates :last_name, :length => { :in => 1..30 }
  validates :first_name, :length => { :in => 1..20 }
  validates :username, :length => { :in => 2..20}
  validates :username, :format => { :with => /\A[a-z0-9][-a-z0-9]{1,19}\Z/i }
  validates :email, :length => { :in => 4..50 }
  include Gravtastic
  gravtastic
end
