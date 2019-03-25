require 'pry'
require 'json'
require 'rest-client'
require './config/environment'



def get_questions_data(url)
    # url = "https://opentdb.com/api.php?amount=50&category=9"
    response = RestClient.get(url)
    data = JSON.parse(response)
    parsed_data = data["results"]
    parsed_data.each do |x|
        binding.pry
    # if Question.find_by(category: x["category"], type: x["type"], difficulty: x["difficulty"], question: x["question"], correct_answer: x["correct_answer"], incorrect_answers: x["incorrect_answers"].first)
    # else
        q = Question.new(category: x["category"], type: x["type"], difficulty: x["difficulty"], question: x["question"], correct_answer: x["correct_answer"], incorrect_answers: x["incorrect_answers"].first)
        q.save 
    # end
    end
end

get_questions_data("https://opentdb.com/api.php?amount=10&type=multiple")
binding.pry
"test"

