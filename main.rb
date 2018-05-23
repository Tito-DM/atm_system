load 'card_collection.rb'
load 'menu.rb'
#global

$card = CardCollection.new

#************Function Declararion************** 

def receipt message
   receipt = {
           status: false,
           message: message,
           date: DateTime.now.strftime("%d-%m-%y %H:%M:S")
       }

        puts "Returning the card...."
      #clear the screen 
      clearscreen
      puts "printing a receipt....."
      clearscreen
      
     puts " status: #{receipt[:status]}\n message:'#{receipt[:message]}'\n Date: #{receipt[:date]}"
end

def clearscreen 
    sleep 2
    system ("clear")
end

def welcomeMessage
  puts "********************ATM System*********************"

  puts "Insert Your Card: "

end

#load card data to the system

$card.createCard


# get the message

def getPin
  puts "Enter your Pin Number or 4 to exit: "
  pin = gets.chomp
  return pin
end


#**********End**********


#*********** Function call ***********

welcomeMessage

#gets a char
gets

#clear the screen
clearscreen


 #check if card is valid
 pin = getPin
#clear the screen
clearscreen

  while pin != "4"

    case 
         
    when $card.cardValidate(pin) == "valid pin"

      mainmenu
      break
    when $card.cardValidate(pin) == "invalid status"
              receipt "this card is blocked"
      break
    when  $card.cardValidate(pin) == "invalid date"
          receipt "card expired"
       
      break
    when  $card.cardValidate(pin) == "invalid pin"
  
       receipt "Wrong pin"
  
     break
      
    end
  end

   if $card.cardValidate (pin) == "invalid date"

   #   receipt = {
   #       status: false,
   #       message: "Wrong pin",
   #       date: DateTime.now.to_s
   #   }
   # else
   #
   # 
   #   end
   #
   #   if $card.cardValidate(pin) == "invalid status"
   #
   #     receipt = {
   #         status: false,
   #         message: "",
   #         date: DateTime.now.to_s
   #     }
   #   end


   else
    
   end









  


