class Author 
  attr_accessor :name, :posts
  
  def initialize(author_name)
    @name= author_name
    @posts = []
  end
  
  def add_post(post)
    post.author = self
    @posts << post
  end
  
  def add_post_by_title
    
  
end 




end 