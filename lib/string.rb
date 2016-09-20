def String
  def self.numeric?(string)
    Float(string) != nil rescue false
  end
end
