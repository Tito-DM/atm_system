require 'date'
load 'card.rb'
class CardCollection

  def initialize
    @cardCollection  = []
  end


  def createCard

#create cards

    date1 = DateTime.new(2020,4,20)
    date2 = DateTime.new(2017,9,12)
    date3 = DateTime.new(2019,8,19)

    card1 = Card.new("MasterCard",date1,"1234",true)
    card2 = Card.new("Visa",date2,"2222",true)
    card3 = Card.new("MasterCard",date3,"1485",false)

    #add to Array

    @cardCollection.push card1
    @cardCollection.push card2
    @cardCollection.push card3

  end


  def cardValidate(pin)
     size = @cardCollection.size.to_i
    @cardCollection.each do |card|

      if card.cardPin == pin  then
        #check the date and status

        case
        when card.cardStatus == false
          return "invalid status"
          break
        when card.cardExpDate < DateTime.now
          return "invalid date"
        else
               return "valid pin"
          end

      else
        if size == 1
          return "invalid pin"
        else
          size -=1
        end
        end
      
      end

    end
  end



