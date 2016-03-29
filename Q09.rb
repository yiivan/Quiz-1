class Book
  attr_accessor :title, :chapters

  def initialize(title = "", chapters = [])
    @title = title
    @chapters = chapters
  end

  def add_chapter(title)
    @chapters << title
  end

  def chapters
    puts "Your book: #{@title} has #{@chapters.length} chapters:"
    for num in 0...@chapters.length
      puts "#{num + 1}. #{@chapters[num]}"
    end
  end
end


book = Book.new
book.title = "My Awesome Book"
book.add_chapter("My Awesome Chapter 1")
book.add_chapter("My Awesome Chapter 2")
book.chapters
