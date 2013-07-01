class Review < ActiveRecord::Base

  attr_accessible :image_content_type,
				  :image_file_name,
				  :image_file_size,
				  :image_updated_at,
				  :image

  has_attached_file :image,  :styles => {
     :thumb => "300x120>",
     :full => "900x460>"
    },
    :storage => :s3,
    :s3_credentials => {
      :bucket            => "zaleipol",
      :access_key_id     => "AKIAIGBC6QKGXEAW4LGA",
      :secret_access_key => "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"
    }
end
