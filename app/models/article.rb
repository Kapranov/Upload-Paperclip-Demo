class Article < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :original => "922x922>", :thumb => "220x220>" }
  has_attached_file :resume

  validates_presence_of :avatar
  validates_presence_of :resume

  validates_attachment :avatar, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  validates_attachment :resume, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
  validates_attachment_file_name :resume, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
end
