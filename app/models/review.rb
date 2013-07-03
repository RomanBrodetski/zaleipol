class Review < ActiveRecord::Base
  attr_accessible :image_content_type,
				  :image_file_name,
				  :image_file_size,
				  :image_updated_at,
				  :image,
          :title,
          :comment

  has_attached_file :image,  :styles => {
     :thumb => "300x120>",
     :full => "900x460>"
    },
    :storage => :s3,
    :url  => ":s3_eu_url",
    :path => "/:class/:attachment/:id_partition/:style/:filename'"
    :s3_credentials => {
      :bucket            => "zaleipol",
      :access_key_id     => "AKIAJ2VBY3U4STWRR5EA",
      :secret_access_key => "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"
    }
end
