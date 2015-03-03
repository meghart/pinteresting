class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image,
                  :storage => :s3,
                  :s3_credentials => "#{Rails.root}/config/secrets.yml",
                  :path => "/:style/:id/:filename"

	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
