class Post 
  
  attr_accessor :tittle, :author
  
@@all=[]

def initialize(post_title)
  @tittle=post_title
  @@all << self
end

def self.all
  @@all
end 

def author_name
  if self.author.nil?
    nil 
  else 
    self.author.name
  end
end 

end