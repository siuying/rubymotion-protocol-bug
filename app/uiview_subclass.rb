class UIViewSubclass < UIView
  def reuseIdentifier
    "UIViewSubclass"
  end

  def prepareForReuse
  end
end