local actor, super = Class(Actor, "gilbert")

function actor:init()
    super.init(self)

    self.name = "Bor"

    self.width = 123
    self.height = 120

    self.path = "shopkeepers/gilbert"
    self.default = "idle"

    self.animations = {
        ["idle"] = {"idle", 1, true},
        ["mad"] = {"mad", 1, true},
        ["eyebrow_raise"] = {"eyebrow_raise", 1, true},
    }

    self.talk_sprites = {
        ["talk"] = 0.2,
        ["happy"] = 0.2
    }
end

function actor:onTalkStart(text, sprite)
    if sprite.sprite == "idle" then
        sprite:setSprite("talk")
    end
end

function actor:onTalkEnd(text, sprite)
    if sprite.sprite == "talk" then
        sprite:setAnimation("idle")
    end
end

return actor