require_relative 'lib/film'

puts "Добрый день, любитель кино!"
puts "Давай посмотрим, хорошо ли ты знаешь какой режиссер какой фильм снял?"

# Все файлы с расширением .txt попадают в массив file_names
file_names = Dir.glob(File.join(__dir__, "data", "*.txt"))
# Если массив пуст, то выводит ошибку
if file_names.empty?
  puts "Файлы не найдены. Для корректной работы установите папку data."
  exit  
end

questions = file_names.map do |question_filename|
  file_content = File.readlines(question_filename, chomp: true)
  question = Film.new(file_content[0], file_content[1], file_content[2].to_i)
  question
end

random_questions = questions.sample(3)
right_answers = 0
directors = questions.map{ |question| question.director }

random_questions.each do |question|
  puts
  random_directors = (directors - [question.director]).sample(3) + [question.director]
  random_directors.shuffle!
  puts "Кто снял «#{question.title}» (#{question.year})?"
  random_directors.each.with_index(1) { |author, index| puts "#{index}. #{author}" }
  input = gets.to_i
  if random_directors[input-1] == question.director
    puts "Верно!"
    right_answers +=1
  else
    puts "Неверно! Правильный ответ: #{question.director}"
  end
end

puts "Вы угадали #{right_answers} режиссеров из #{random_questions.size}"
