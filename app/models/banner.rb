class Banner < ActiveRecord::Base
  attr_accessible :weight,  
				  :image_content_type,
				  :image_file_name,
				  :image_file_size,
				  :image_updated_at,
				  :image

  validates_presence_of :image_file_name

  has_attached_file :image,  :styles => {
     :mailing => "996x400>",
    },
    :storage => :s3,
    :s3_credentials => {
      :bucket            => "zaleipol",
      :access_key_id     => "AKIAIGBC6QKGXEAW4LGA",
      :secret_access_key => "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"
    }
end
