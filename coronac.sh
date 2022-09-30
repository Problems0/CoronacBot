#!/bin/bash

source ApiBot.sh

bot_token='5462710426:AAE0mU1LuvyIGqc3eesVomYSv40mUoyjaDk'

ApiBot.init --token "$bot_token" --monitor --flush
ApiBot.username

start()
{

  ApiBot.sendChatAction --chat_id ${message_chat_id[$id]} --action 'typing'
		ApiBot.sendMessage	--chat_id ${message_chat_id[$id]} \
								--reply_to_message_id ${message_message_id[$id]} \
								--text "LISTA ATUALIZADA COVID😷" \
								--reply_markup "$keyboard1" \
								--parse_mode markdown

	return 0
}

start2()
{

	ApiBot.editMessageText --chat_id ${callback_query_message_chat_id[$id]} \
							--message_id  ${callback_query_message_message_id[$id]} \
								--reply_to_message_id ${message_message_id[$id]} \
								--text "LISTA ATUALIZADA COVID😷" \
								--reply_markup "$keyboard1" \
								--parse_mode markdown

	return 0
}


dev()
{

  ApiBot.sendChatAction --chat_id ${message_chat_id[$id]} --action 'typing'
		ApiBot.sendMessage	--chat_id ${message_chat_id[$id]} \
								--reply_to_message_id ${message_message_id[$id]} \
								--text "VOCE TAMBEM PODE DESENVOLVER👨‍💻\n\nMIM DANDO SUGESTÕES😉\n\nEAI VC VAI SE JUNTA NESSA JORNADA?😏" \
								--reply_markup "$keyboard3" \
								--parse_mode markdown

	return 0
}

update()
{

  ApiBot.sendChatAction --chat_id ${message_chat_id[$id]} --action 'typing'
		ApiBot.sendMessage	--chat_id ${message_chat_id[$id]} \
								--reply_to_message_id ${message_message_id[$id]} \
								--text "ULTIMA ATUALIZAÇAO: Terça, 6 de setembro as 22:05\n\nPAÍSES QUE ADICIONEI:\n🇧🇷 Brazil✅\n🇨🇺 Cuba✅\n🇬🇪 Georgia✅\n🇩🇪 Germany✅\n🇭🇰 Hong Kong✅\n🇮🇳 India✅\n🇮🇹 Italy✅\n🇮🇱 Israel✅\n\nPAISES QUE AINDA VOU ADICIONAR:\n🇯🇴 Jordan❌\n🇰🇿 Kazakhstan❌\n🇰🇬 Kyrgyzstan❌\n🇲🇾 Malaysia❌\n🇳🇬 Nigeria❌\n🇷🇺 Russia❌\n🇸🇦 Saudi Arabia❌\n🇸🇬Singapore❌\n🇪🇸 Spain❌\n🇹🇬 Togo❌\n🇺🇦 Ukraine❌\n" \
								--reply_markup "$keyboard2" \
								--parse_mode markdown

	return 0
}


global()
{
	ApiBot.editMessageText --chat_id ${callback_query_message_chat_id[$id]} \
							--message_id  ${callback_query_message_message_id[$id]} \
								--reply_to_message_id ${message_message_id[$id]} \
								--text "$(cd Cats && ./global)" \
								--reply_markup "$keyboard2" \
								--parse_mode markdown

	return 0
}

brasil()
{
	ApiBot.editMessageText --chat_id ${callback_query_message_chat_id[$id]} \
							--message_id  ${callback_query_message_message_id[$id]} \
								--reply_to_message_id ${message_message_id[$id]} \
								--text "$(cd Cats && ./brasil)" \
								--reply_markup "$keyboard2" \
								--parse_mode markdown

	return 0
}


cuba()
{
	ApiBot.editMessageText --chat_id ${callback_query_message_chat_id[$id]} \
							--message_id  ${callback_query_message_message_id[$id]} \
								--reply_to_message_id ${message_message_id[$id]} \
								--text "$(cd Cats && ./cuba)" \
								--reply_markup "$keyboard2" \
								--parse_mode markdown

	return 0
}

georgia()
{
	ApiBot.editMessageText --chat_id ${callback_query_message_chat_id[$id]} \
							--message_id  ${callback_query_message_message_id[$id]} \
								--reply_to_message_id ${message_message_id[$id]} \
								--text "$(cd Cats && ./georgia)" \
								--reply_markup "$keyboard2" \
								--parse_mode markdown

	return 0
}

germany()
{
	ApiBot.editMessageText --chat_id ${callback_query_message_chat_id[$id]} \
							--message_id  ${callback_query_message_message_id[$id]} \
								--reply_to_message_id ${message_message_id[$id]} \
								--text "$(cd Cats && ./germany)" \
								--reply_markup "$keyboard2" \
								--parse_mode markdown

	return 0
}

hongkong()
{
	ApiBot.editMessageText --chat_id ${callback_query_message_chat_id[$id]} \
							--message_id  ${callback_query_message_message_id[$id]} \
								--reply_to_message_id ${message_message_id[$id]} \
								--text "$(cd Cats && ./hongkong)" \
								--reply_markup "$keyboard2" \
								--parse_mode markdown

	return 0
}

india()
{
	ApiBot.editMessageText --chat_id ${callback_query_message_chat_id[$id]} \
							--message_id  ${callback_query_message_message_id[$id]} \
								--reply_to_message_id ${message_message_id[$id]} \
								--text "$(cd Cats && ./india)" \
								--reply_markup "$keyboard2" \
								--parse_mode markdown

	return 0
}

italy()
{
	ApiBot.editMessageText --chat_id ${callback_query_message_chat_id[$id]} \
							--message_id  ${callback_query_message_message_id[$id]} \
								--reply_to_message_id ${message_message_id[$id]} \
								--text "$(cd Cats && ./italy)" \
								--reply_markup "$keyboard2" \
								--parse_mode markdown

	return 0
}

israel()
{
	ApiBot.editMessageText --chat_id ${callback_query_message_chat_id[$id]} \
							--message_id  ${callback_query_message_message_id[$id]} \
								--reply_to_message_id ${message_message_id[$id]} \
								--text "$(cd Cats && ./israel)" \
								--reply_markup "$keyboard2" \
								--parse_mode markdown

	return 0
}

unset botao1
botao1=''
ApiBot.InlineKeyboardButton --button 'botao1' --line 1 --text "Global🌐" --callback_data 'global'
ApiBot.InlineKeyboardButton --button 'botao1' --line 2 --text "Brasil🇧🇷" --callback_data 'brasil'
ApiBot.InlineKeyboardButton --button 'botao1' --line 3 --text "Cuba🇨🇺" --callback_data 'cuba'
ApiBot.InlineKeyboardButton --button 'botao1' --line 4 --text "Georgia🇬🇪" --callback_data 'georgia'
ApiBot.InlineKeyboardButton --button 'botao1' --line 5 --text "Germany🇩🇪" --callback_data 'germany'
ApiBot.InlineKeyboardButton --button 'botao1' --line 6 --text "Hong Kong🇭🇰" --callback_data 'hongkong'
ApiBot.InlineKeyboardButton --button 'botao1' --line 7 --text "India🇮🇳" --callback_data 'india'
ApiBot.InlineKeyboardButton --button 'botao1' --line 8 --text "Italy🇮🇹" --callback_data 'italy'
ApiBot.InlineKeyboardButton --button 'botao1' --line 9 --text "Israel🇮🇱" --callback_data 'israel'
ApiBot.regHandleFunction --function global --callback_data global
ApiBot.regHandleFunction --function brasil --callback_data brasil
ApiBot.regHandleFunction --function cuba --callback_data cuba
ApiBot.regHandleFunction --function georgia --callback_data georgia
ApiBot.regHandleFunction --function germany --callback_data germany
ApiBot.regHandleFunction --function hongkong --callback_data hongkong 
ApiBot.regHandleFunction --function india --callback_data india
ApiBot.regHandleFunction --function italy --callback_data italy
ApiBot.regHandleFunction --function israel --callback_data israel
keyboard1="$(ApiBot.InlineKeyboardMarkup -b 'botao1')"
unset botao2
botao2=''
ApiBot.InlineKeyboardButton --button 'botao2' --line 1 --text "➡️VOLTAR" --callback_data 'start2'
ApiBot.regHandleFunction --function start2 --callback_data start2
keyboard2="$(ApiBot.InlineKeyboardMarkup -b 'botao2')"
unset botao3
botao3=''
ApiBot.InlineKeyboardButton --button 'botao3' --line 1 --text "Sim" --callback_data 'sim' --url 't.me/NobodyDev'
ApiBot.InlineKeyboardButton --button 'botao3' --line 1 --text "Nao" --callback_data 'nao'
ApiBot.regHandleFunction --function start2 --callback_data sim 
ApiBot.regHandleFunction --function start2 --callback_data nao 
keyboard3="$(ApiBot.InlineKeyboardMarkup -b 'botao3')"


comando_invalido()
{

  ApiBot.sendChatAction --chat_id ${message_chat_id[$id]} --action 'typing'
		ApiBot.sendMessage	--chat_id ${message_chat_id[$id]} \
								--reply_to_message_id ${message_message_id[$id]} \
								--text "ERRO: COMANDO NAO ENCONTRADO❌" \
								--parse_mode markdown
   ApiBot.sendSticker --chat_id ${message_chat_id[$id]} --sticker https://raw.githubusercontent.com/Problems0/MyBot/main/Sticker/Sticker2.webp
	
	return 0	
}

ApiBot.setMessageRules	--name 'start'		\
							--chat_type private				\
							--command '/start'				\
							--action start    \	

ApiBot.setMessageRules	--name 'dev'		\
							--chat_type private				\
							--command '/dev'				\
							--action dev    \

ApiBot.setMessageRules	--name 'update'		\
							--chat_type private				\
							--command '/update'				\
							--action update    \	

ApiBot.setMessageRules	--name 'comando_invalido'		\
							--chat_type private				\
							--entitie_type bot_command		\
							--action comando_invalido    \			
																																																																																	
while : 
do
	
	ApiBot.getUpdates --limit 100 --offset $(ApiBot.OffsetNext) --timeout 30
	

	for id in $(ApiBot.ListUpdates)
	do

	(
	
	    ApiBot.watchHandle --callback_data ${callback_query_data[$id]} 
	
		ApiBot.manageRules --update_id $id
		
	) & 
	done
done
#FIM