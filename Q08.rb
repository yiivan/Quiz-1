require "./Q07.rb"


module Blog
  class Article
    attr_accessor :title, :body
    include HelperMethods

    def initialize(title = "", body = "")
      @title = title
      @body = body
    end
  end
end

class Snippet < Blog::Article
  def body
    if @body.length > 100
      @body[0..99] + "..."
    else
      @body
    end
  end
end

sn = Snippet.new("THE title OF my first object", "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
")
puts sn.titleize(sn.title)
puts sn.body

sn2 = Snippet.new("THE title OF my second object", "Hello World!")
puts sn.titleize(sn2.title)
puts sn2.body
