require_relative '../config/environment'

@prompt = TTY::Prompt.new

def selection
  choices = ["YOLO I can handle any question", "I'd like to choose my categories", "Who do you think I am...I choose by difficulty"]
  case @prompt.select("How would you like to sort your quiz?", choices)
  when "YOLO I can handle any question"
    #add the normal random question method here
  when "I'd like to choose my categories"
    find_question_category
  when "Who do you think I am...I choose by difficulty"
    find_question_difficulty
  else
    #add way to go back to previous menu?
  end
end

def find_question_category
  search_str = ""
  category_choices = ["General Knowledge", "Books", "Films", "Music", "TV", "Games", "Computer Science", "History",  "Sports", "Anime", "Cartoons", "Go Back"]
  case @prompt.select("Choose a category:", category_choices)
  when "General Knowledge"
    search_str = "General Knowledge"
  when "Books"
    search_str = "Entertainment: Books"
  when "Films"
    search_str = "Entertainment: Film"
  when "Music"
    search_str = "Entertainment: Music"
  when "TV"
    search_str = "Entertainment: Television"
  when "Games"
    search_str = "Entertainment: Video Games"
  when "History"
    search_str = "History"
  when "Sports"
    search_str = "Sports"
  when "Anime"
    search_str = "Entertainment: Japanese Anime & Manga"
  when "Cartoons"
    search_str = "Entertainment: Cartoon & Animations"
  else
    selection
  end
  $categorised = Question.where("category = '#{search_str}'")
end

def find_question_difficulty
  search_str = ""
  difficulty_choices = ["Rookie", "Meh", "HARDCORE", "Go Back"]
  case @prompt.select("Choose a Difficulty:", difficulty_choices)
  when "Rookie"
    search_str = "easy"
  when "Meh"
    search_str = "medium"
  when "HARDCORE"
    search_str = "hard"
  else
    selection
  end
  $difficultised = Question.where("difficulty = '#{search_str}'")
end
