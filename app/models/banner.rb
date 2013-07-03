class Banner < ActiveRecord::Base
  attr_accessible :weight,  
				  :image_content_type,
				  :image_file_name,
				  :image_file_size,
				  :image_updated_at,
				  :image

  # validates_presence_of :image_file_name

  has_attached_file :image,  :styles => {
     :full => "996x400>",
    },
    :storage => :s3,
    :url  => ":s3_eu_url",
    :path => "/:class/:attachment/:id_partition/:style/:filename",
    :s3_credentials => {
      :bucket            => "zaleipol",
      :access_key_id     => "AKIAJ2VBY3U4STWRR5EA",
      :secret_access_key => "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"
    }
end
