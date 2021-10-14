require 'telegram/bot'

TOKEN = '2097655622:AAETq-4ulc17v7H7lo8d7LS0pkYeP1gg-u4'
ANSWERS = [
    #Положительные
    "Твоя теплота делает этот мир лучше. Горжусь тобой",
    "Всё, что есть в этом мире, ты можешь иметь", 
    "Ты умеешь достигать запланированного результата. Верю в тебя",
    "Тебя приятно слушать.
    Твои истории, знания, выводы, размышления ценные и важные",
    "Тебе можно не делать то, что не хочется",
    #Нерешительные положительные
    "Ты можешь знать от чего у тебя появляются силы, что тебя вдохновляет и в каких местах тебе хорошо",
    "Как хорошо, что ты есть",
    "Ты можешь действовать, думать и говорить в своем темпе. У тебя достаточно времени",
    "Ты взрослый, адекватный человек, который умеет хорошо думать и делать выводы",
    "Так приятно, что ты помогаешь другим. Ты можешь делать это тогда, когда тебе удобно",
    #Нейтральные
    "Нормально, когда о тебе заботятся и делают приятно",
    "Ты можешь знать, когда наступит время для перемен. У тебя достаточно сил и знаний начать что-то новое",
    "Ты прекрасный человек",
    "Ты можешь доверять своим ощущения и чувствам. И делиться ими с другими",
    "Ты делаешь этот мир счастливее",
    #Отрицательные
    "Рядом с тобой приятно быть",
    "Ты ответственный человек, с тобой надёжно",
    "Мир большой и в каждой его части есть место для тебя. Ты можешь наслаждаться жизнью",
    "Мне нравится, что ты имеешь собственные убеждения и чёткую позицию в отдельных вопросах",
    "Твоя жизнь важна для мира. Он ждал тебя"
]

Telegram::Bot::Client.run(TOKEN) do |bot|
    bot.listen do |message|
        case message.text
        when '/start','/start start'
            bot.api.send_message(
                chat_id: message.chat.id,
                text: "Приветствую, #{message.from.first_name}. Оставляй смайлы и получай доброе сообщение.")
        else
            bot.api.send_message(
                chat_id: message.chat.id,
                text: ANSWERS.sample
            )
        end
      end
    end


