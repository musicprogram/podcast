class Episode < ActiveRecord::Base
  belongs_to :podcast

  has_attached_file :episode_thumbnail, :styles => { :small => "100x100#", :large => "500x500>" }       
  validates_attachment_content_type :episode_thumbnail, content_type: /\Aimage\/.*\Z/
end
