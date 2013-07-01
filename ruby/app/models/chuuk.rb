class Chuuk < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  attr_accessible :picture, :region, :search, :spelling
end
