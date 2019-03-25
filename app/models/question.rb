class Question < ActiveRecord::Base

    def self.get_questions_data(url)
        response = RestClient.get(url)
        data = JSON.parse(response)
        parsed_data = data["results"]
        parsed_data.each do |x|
        Question.create(category: x["category"], difficulty: x["difficulty"], question: x["question"], correct_answer: x["correct_answer"], incorrect_answers: x["incorrect_answers"].first)
        end
    end


end