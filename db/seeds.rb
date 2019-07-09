Question.destroy_all
User.destroy_all


a = [
{
category: "General Knowledge",
type: "boolean",
difficulty: "easy",
question: "The Great Wall of China is visible from the moon.",
correct_answer: "False",
incorrect_answers: [
"True"
]
},
{
category: "General Knowledge",
type: "boolean",
difficulty: "easy",
question: "Video streaming website YouTube was purchased in it&#039;s entirety by Facebook for US$1.65 billion in stock.",
correct_answer: "False",
incorrect_answers: [
"True"
]
},
{
category: "General Knowledge",
type: "boolean",
difficulty: "easy",
question: "French is an official language in Canada.",
correct_answer: "True",
incorrect_answers: [
"False"
]
},
{
category: "General Knowledge",
type: "boolean",
difficulty: "easy",
question: "It is automatically considered entrapment in the United States if the police sell you illegal substances without revealing themselves.",
correct_answer: "False",
incorrect_answers: [
"True"
]
},
{
category: "General Knowledge",
type: "boolean",
difficulty: "easy",
question: "Nutella is produced by the German company Ferrero.",
correct_answer: "False",
incorrect_answers: [
"True"
]
},
{
category: "General Knowledge",
type: "boolean",
difficulty: "easy",
question: "A scientific study on peanuts in bars found traces of over 100 unique specimens of urine.",
correct_answer: "False",
incorrect_answers: [
"True"
]
},
{
category: "General Knowledge",
type: "boolean",
difficulty: "easy",
question: "Bulls are attracted to the color red.",
correct_answer: "False",
incorrect_answers: [
"True"
]
},
{
category: "General Knowledge",
type: "boolean",
difficulty: "easy",
question: "The Sun rises from the North.",
correct_answer: "False",
incorrect_answers: [
"True"
]
},
{
category: "General Knowledge",
type: "boolean",
difficulty: "easy",
question: "The color orange is named after the fruit.",
correct_answer: "True",
incorrect_answers: [
"False"
]
},
{
category: "General Knowledge",
type: "boolean",
difficulty: "easy",
question: "You can legally drink alcohol while driving in Mississippi.",
correct_answer: "True",
incorrect_answers: [
"False"
]
},
{
category: "General Knowledge",
type: "boolean",
difficulty: "easy",
question: "On average, at least 1 person is killed by a drunk driver in the United States every hour.",
correct_answer: "True",
incorrect_answers: [
"False"
]
},
{
category: "General Knowledge",
type: "boolean",
difficulty: "easy",
question: "In 2010, Twitter and the United States Library of Congress partnered together to archive every tweet by American citizens.",
correct_answer: "True",
incorrect_answers: [
"False"
]
},
{
category: "General Knowledge",
type: "boolean",
difficulty: "easy",
question: "Adolf Hitler was born in Australia. ",
correct_answer: "False",
incorrect_answers: [
"True"
]
},
{
category: "General Knowledge",
type: "boolean",
difficulty: "easy",
question: "When you cry in space, your tears stick to your face.",
correct_answer: "True",
incorrect_answers: [
"False"
]
},
{
category: "General Knowledge",
type: "boolean",
difficulty: "easy",
question: "The Lego Group was founded in 1932.",
correct_answer: "True",
incorrect_answers: [
"False"
]
},
{
category: "General Knowledge",
type: "boolean",
difficulty: "easy",
question: "One of Donald Trump&#039;s 2016 Presidential Campaign promises was to build a border wall between the United States and Mexico.",
correct_answer: "True",
incorrect_answers: [
"False"
]
},
{
category: "General Knowledge",
type: "boolean",
difficulty: "easy",
question: "Romanian belongs to the Romance language family, shared with French, Spanish, Portuguese and Italian. ",
correct_answer: "True",
incorrect_answers: [
"False"
]
},
{
category: "General Knowledge",
type: "boolean",
difficulty: "easy",
question: "&quot;27 Club&quot; is a term used to refer to a list of famous actors, musicians, and artists who died at the age of 27.",
correct_answer: "True",
incorrect_answers: [
"False"
]
},
{
category: "General Knowledge",
type: "boolean",
difficulty: "easy",
question: "Scotland voted to become an independent country during the referendum from September 2014.",
correct_answer: "False",
incorrect_answers: [
"True"
]
},
{
category: "General Knowledge",
type: "boolean",
difficulty: "easy",
question: "The National Animal of Scotland is the Unicorn.",
correct_answer: "True",
incorrect_answers: [
"False"
]
}
]



a.each do |question|
    Question.find_or_create_by(question: question[:question], correct_answer: question[:correct_answer])
end

# User.find_or_create_by(name: "John")
# User.find_or_create_by(name: "Tim")
# User.find_or_create_by(name: "Jill")
    


# binding.pry

