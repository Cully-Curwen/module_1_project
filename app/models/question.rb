class Question < ActiveRecord::Base

    has_many :tests

    def self.get_questions_data(url)
        response = RestClient.get(url)
        data = JSON.parse(response)
        parsed_data = data["results"]
        parsed_data.each do |x|
        Question.create(category: x["category"], difficulty: x["difficulty"], question: x["question"], correct_answer: x["correct_answer"], incorrect_answer_01: x["incorrect_answers"][0], incorrect_answer_02: x["incorrect_answers"][1], incorrect_answer_03: x["incorrect_answers"][2])
        end
    end



end