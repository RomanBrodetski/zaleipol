class String
  def to_eu
  	self["http://s3.amazonaws.com/"] = "http://s3-eu-west-1.amazonaws.com/"
  end 
end