class Category

  @prompt = TTY::Prompt.new
  
  def self.select
    category_choices = ["EVERY THING", "General Knowledge", "Books", "Films", "Music", "TV", "Games", "Computer Science", "History",  "Sports", "Anime", "Cartoons", "Go Back"]
    case @prompt.select("Choose a category:", category_choices)
    when "EVERY THING"
      nil
    when "General Knowledge"
      "General Knowledge"
    when "Books"
      "Entertainment: Books"
    when "Films"
      "Entertainment: Film"
    when "Music"
      "Entertainment: Music"
    when "TV"
      "Entertainment: Television"
    when "Games"
      "Entertainment: Video Games"
    when "History"
      "History"
    when "Sports"
      "Sports"
    when "Anime"
      "Entertainment: Japanese Anime & Manga"
    when "Cartoons"
      "Entertainment: Cartoon & Animations"
    end
  end

end
