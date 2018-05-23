class Card

  def initialize (cardType, cardExpDate, cardPin,cardStatus)
    @carType = cardType
    @cardExpDate = cardExpDate
    @cardPin = cardPin
    @cardStatus = cardStatus
  end

  attr_reader :carType, :cardExpDate, :cardPin, :cardStatus
end



