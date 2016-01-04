class Podcast < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :episodes

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :thumbnail, :styles => { :small => "100x100#", :large => "500x500>" }       
  validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\Z/
end


  
