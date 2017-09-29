class Animal
  include Age
  attr_accessor :name
end

class Artifact
  include Age
  attr_accessor :description
end

module Age
  attr_accessor :age
end
