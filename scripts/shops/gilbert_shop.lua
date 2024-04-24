local BorShop, super = Class(Shop, "gilbert_shop")

function BorShop:init()
    super.init(self)

        self.encounter_text               = "[emote:idle]* Oi blud[wait:5]\n* You uh, need anything?"
        self.shop_text                    = "[emote:idle]* Oi blud[wait:5]\n* You uh, need anything?"
        self.leaving_text                 = "[emote:idle]* Cya."
        -- Shown when you're in the BUY menu
        self.buy_menu_text                = "[emote:look_side]Let's see..."
        -- Shown when you're about to buy something.
        self.buy_confirmation_text        = "Ok so basically\ngimme %s ."
        -- Shown when you refuse to buy something
        self.angy                         = "[emote:annoyed]ohFUCK OFF!!"
        -- Shown when you buy something
        self.buy_text                     = "Aight bet."
        -- Shown when you buy something and it goes in your storage
        self.buy_storage_text             = "Aight bet."
        -- Shown when you don't have enough money to buy something
        self.buy_too_expensive_text       = "[emote:annoyed]I sell ITEMS, not MONEY\nyou rhubarb faced nerd."
        -- Shown when you don't have enough space to buy something.
        self.buy_no_space_text            = "[emote:idle]Seems like you got a\nbuncha things in your\npants, huh? Haha"
        -- Shown when something doesn't have a sell price
        self.sell_no_price_text           = "[emote:idle](So like, idk lmao)"
        -- Shown when you're in the SELL menu
        self.sell_menu_text               = "[emote:idle]Whatchu got for me?"
        -- Shown when you try to sell an empty spot
        self.sell_nothing_text            = "[emote:troll]Sure, I'll pay 50\nKROMER for that."
        -- Shown when you're about to sell something.
        self.sell_confirmation_text       = "[emote:idle]Gimme."
        -- Shown when you refuse to sell something
        self.sell_refuse_text             = "[emote:eyebrow_raise]What the SHIT do\nyou have there anyway"
        -- Shown when you sell something
        self.sell_text                    = "[emote:idle]oooookay."
        -- Shown when you have nothing in a storage
        self.sell_no_storage_text         = "[emote:idle]."
        -- Shown when you enter the talk menu.
        self.talk_text                    = "[emote:idle](god just put me\ninto your party already !!!)"

        self.sell_options_text["items"]   = "Whatchu got for me?"
        self.sell_options_text["weapons"] = "Whatchu got for me?"
        self.sell_options_text["armors"]  = "Whatchu got for me?"
        self.sell_options_text["storage"] = "Whatchu got for me?"

        self:registerItem("healitem", { price = 50, description = "HealItem\n+?? HP" })
        self:registerItem("borstuff/substance", { stock = 10, color = { 0, 127 / 255, 0, 1 } })
        self:registerItem("healitem", {stock = 3})
        self:registerItem("maximtomato", { bonuses = { defense = 10 } })

        self:registerTalk("Party")

        self.shopkeeper:setActor("gilbert")
        self.shopkeeper.sprite:setPosition(0, 45)
        self.shopkeeper.slide = true

        self.voice = "gilbert"

        self.background = "ui/shop/gilbertshop"
        self.shop_music = "deltarune/dogcheck"
    end


function BorShop:startTalk(talk)
    if talk == "Party" then
        self:startDialogue({ "* cmon bro!!! i have\nsuper cool\nstats    n stuff" })
    elseif talk == "Example Talk 2" then
        if not self:getFlag("talk_example2", false) then
            self:setFlag("talk_example2", true)
            self:startDialogue({ "* Example Talk 2" })
        else
            self:startDialogue({ "* Repeated Example Talk 2" })
        end
    elseif talk == "Example Talk 2" then
        self:startDialogue({ "* Example Talk 2" })
    elseif talk == "Example Talk 3" then
        self:startDialogue({ "* Example Talk 3" })
    elseif talk == "Example Talk 4" then
        self:startDialogue({ "* Example Talk 4" })
    elseif talk == "Example Talk 5" then
        self:startDialogue({ "* Example Talk 5" })
    elseif talk == "Example Talk 6" then
        self:startDialogue({ "* Example Talk 6" })
    end
end


return BorShop
