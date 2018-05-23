load 'card_collection.rb'

describe CardCollection do

  describe "cardValidate" do

    it "it should return valid  if pin is valid" do

      card = CardCollection.new
      card.createCard

      expect(card.cardValidate("1234")).to eq "valid pin"

    end

    it "it should return invalid  if pin not valid" do

      card = CardCollection.new
      card.createCard

      expect(card.cardValidate("222")).to eq "invalid pin"

    end

    it "it should return invalid status if is eq false" do

      card = CardCollection.new
      card.createCard

      expect(card.cardValidate("1485")).to eq "invalid status"

    end


    it "it should return invalid date is less then current date" do

      card = CardCollection.new
      card.createCard

      expect(card.cardValidate("2222")).to eq "invalid date"

    end



  end

end
