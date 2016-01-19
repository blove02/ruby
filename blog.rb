class Blog
 
  @@all_blog_posts = []
  @@num_blog_posts = 0
 
  def self.all
    @@all_blog_posts
  end
 
  def self.add(thing)
    @@all_blog_posts << thing
    @@num_blog_posts += 1
  end
 
  def self.publish
    @@all_blog_posts.each do |blogpost|
      puts "Title:\n #{blogpost.title}"
      puts "Body:\n #{blogpost.content}"
      puts "Publish Date:\n #{blogpost.date}"
      puts "Author:\n #{blogpost.author}"
    end
  end
 
end
 
class BlogPost < Blog
 
  def self.create
    blogpost = new
    puts "Title:"
    blogpost.title = gets.chomp
    puts "Content:"
    blogpost.content = gets.chomp
    blogpost.date = Time.now
    puts "Author:"
    blogpost.author = gets.chomp
    blogpost.save
    puts "Do you want to create another post? [Y/N]"
    create if gets.chomp.downcase == 'y'
  end
 
  def title
    @title
  end
 
  def title=(title)
    @title = title
  end
 
  def date
    @date
  end
 
  def date=(date)
    @date = date
  end
 
  def content
    @content
  end
 
  def content=(content)
    @content = content
  end

  def author
  	@author
  end

  def author=(author)
  	@author = author
  end
 
  def save
    BlogPost.add(self)
  end
 
end
 
BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish