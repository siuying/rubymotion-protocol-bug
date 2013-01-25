class ObjectSubclass < NSObject
  def reuseIdentifier
    "RubyImpl"
  end

  def prepareForReuse
    self.subviews.each do |v|
      v.removeFromSuperview
    end
  end
end