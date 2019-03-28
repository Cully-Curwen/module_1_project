class Category

  @prompt = TTY::Prompt.new
  
  def self.select
    Styling.category_menu
    category_choices = [Styling.centre("EVERY THING"), Styling.centre("General Knowledge"), Styling.centre("Books"), Styling.centre("Films"), Styling.centre("Music"), Styling.centre("TV"), Styling.centre("Games"), Styling.centre("Computer Science"), Styling.centre("History"),  Styling.centre("Sports"), Styling.centre("Anime"), Styling.centre("Cartoons")]
    case @prompt.select(Styling.landing_page("Choose a category:"), category_choices, help_color: :hidden)
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
