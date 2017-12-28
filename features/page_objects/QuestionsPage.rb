class QuestionsPage 
    include PageObject

    div(:question1, id: "question1-page-nav")
    button(:yes, class: "yes-button btn btn-primary")
    button(:no, class: "no-button btn btn-primary")
    div(:question2, id: "question2")

    def answer_questions answer
        num_of = answer == 'yes' ? 3 : 2
        num_of.times {self.send answer}
    end
end