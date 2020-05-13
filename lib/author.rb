class Author 
  attr_accessor :name, :posts
  
  def initialize(author_name)
    @name= author_name
    @posts = []
  end
  
  def posts
   @posts
  end 
  
  def add_post(post)
    post.author = self
    @posts << post
  end
  
  def add_post_by_title(post_title)
    post = Post.new(post_title)
    add_post(post)
  end 
  
  def self.post_count
    Post.all.length
  end 
  
  
end 