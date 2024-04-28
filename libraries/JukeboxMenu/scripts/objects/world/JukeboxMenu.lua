---@class JukeboxMenu : Object
---@overload fun(...) : JukeboxMenu
local JukeboxMenu, super = Class(Object)

function JukeboxMenu:init()
    super.init(self, SCREEN_WIDTH / 2, SCREEN_HEIGHT / 2, 540, 360)

    self.parallax_x = 0
    self.parallax_y = 0
    self.layer = WORLD_LAYERS["ui"]
    self:setOrigin(0.5, 0.5)

    self.box = UIBox(0, 0, self.width, self.height)
    self.box.layer = -1
    self.box.debug_select = false
    self:addChild(self.box)

    ---@type love.Font
    self.font = Assets.getFont("main")
    self.font_2 = Assets.getFont("plain")
    self.font_cjk = Assets.getFont("simsun_small")

    self.heart = Sprite("player/heart_menu")
    self.heart:setOrigin(0.5, 0.5)
    self.heart:setScale(2)
    self.heart:setColor(Game:getSoulColor())
    self.heart.layer = 1
    self.heart_target_x = 16
    self.heart_target_y = 60
    self.heart:setPosition(self.heart_target_x, self.heart_target_y)
    self:addChild(self.heart)

    self.songs = modRequire("scripts.jukebox_songs")
    self.none_text = "---"
	self.none_album = Assets.getTexture("albums/default")
    self.default_song = {
        name = self.none_text,
        file = nil,
        composer = self.none_text,
        released = self.none_text,
        origin = self.none_text,
		locked = nil,
		album = self.none_album
    }

    self.selected_index = 1
    self.page = 1
    self.max_pages = math.ceil(#self.songs / 6)
    self.songs_per_page = 6

    self.selected_index_memory = {}
end

function JukeboxMenu:getPage(page)
    local start_index = 1 + (page-1) * self.songs_per_page
    return {unpack(self.songs, start_index, math.min(start_index + self.songs_per_page, #self.songs))}
end

function JukeboxMenu:draw()
    super.draw(self)

	love.graphics.setColor(1, 1, 1)
    love.graphics.setLineWidth(4)

    love.graphics.setFont(self.font)
    love.graphics.printf("JUKEBOX", 0, -17, self.width, "center")
    love.graphics.rectangle("line", -16, 20, self.width+32, 1)

    love.graphics.setLineWidth(1)
    love.graphics.setColor(0, 0.4, 0)
    for i = 1, self.songs_per_page + 1 do
        love.graphics.rectangle("line", 2, 40 + 40 * (i - 1), 240, 1)
    end
    love.graphics.setLineWidth(4)
    love.graphics.setColor(1, 1, 1)

    local cur_page = self:getPage(self.page)
    for i = 1, self.songs_per_page do
        local cur_song = cur_page[i] or self.default_song
		if not cur_song.locked then
            local name = cur_song.name or self.none_text
		    love.graphics.setColor(1, 1, 1)
		    local scale_x = math.min(196 / self.font:getWidth(name), 1)
		    love.graphics.print(name, 40, 43 + 40 * (i - 1), 0, scale_x, 1)
		else
		    local name = "Locked" or self.none_text
		    love.graphics.setColor(0.5, 0.5, 0.5)
		    local scale_x = math.min(196 / self.font:getWidth(name), 1)
		    love.graphics.print(name, 40, 43 + 40 * (i - 1), 0, scale_x, 1)
		end
    end

    love.graphics.setColor(0.4, 0.4, 0.4)
    love.graphics.setFont(self.font_2)
    love.graphics.printf("Page "..self.page.."/"..self.max_pages.."", -16, 295, 276, "center")
    love.graphics.setColor(1, 1, 1)
    love.graphics.setFont(self.font)

    love.graphics.rectangle("line", -16, 330, 276, 1)

    love.graphics.print("[X] Back", 0, 340)
    love.graphics.printf("[C] Info", 0, 340, 250, "right")

    love.graphics.rectangle("line", 260, 20, 1, 356)

    local cur_song = cur_page[self.selected_index] or self.default_song
	
    love.graphics.setColor(1, 1, 1)
    if not cur_song.album or cur_song.locked or cur_song.name == self.none_text then
        local album_art = self.none_album
        love.graphics.draw(album_art, 410, 170, 0, 1, 1, 125, 125)
    else
        local album_art = Assets.getTexture("albums/"..cur_song.album) or self.none_album
        love.graphics.draw(album_art, 410, 170, 0, 1, 1, 125, 125)
    end

    local info_font = self.font
    local info_scale = 0.5
    if cur_song.cjk_info then
        info_font = self.font_cjk
        info_scale = 1
    end
    love.graphics.setFont(info_font)
    local info_w = 260 / info_scale
    local info = string.format(
        "Composer: %s\nReleased: %s\nOrigin: %s",
        cur_song.composer or self.none_text,
        cur_song.released or self.none_text,
        cur_song.origin or self.none_text
    )
    local _, info_lines = info_font:getWrap(info, info_w)
    local info_yoff = info_font:getHeight() * #info_lines * info_scale
    love.graphics.printf(info, 270, 372 - info_yoff, info_w, "left", 0, info_scale, info_scale)

    love.graphics.setColor(1, 1, 1)
end

function JukeboxMenu:update()
    --play song
    if Input.pressed("confirm", false) then
        local cur_song = self:getPage(self.page)[self.selected_index] or self.default_song
        if cur_song.file and not cur_song.locked == true then
            Game.world.music:play(cur_song.file, 1)
		end

		if cur_song.locked == true then
            Assets.playSound("error")
        end
    end

    --close menu
    if Input.pressed("cancel", false) then
        Assets.playSound("ui_cancel_small")
        Game.world:closeMenu()
    end

    local page_bak = self.page
    --page left
    if Input.pressed("left", true) then
        Assets.playSound("ui_move")
        self.page = self.page - 1
    end
    --page right
    if Input.pressed("right", true) then
        Assets.playSound("ui_move")
        self.page = self.page + 1
    end
    self.page = Utils.clampWrap(self.page, 1, self.max_pages)
    if self.page ~= page_bak then
        self.selected_index = self.selected_index_memory[self.page] or 1
    end

    --move up
    if Input.pressed("up", true) then
        Assets.playSound("ui_move")
        self.selected_index = self.selected_index - 1
    end
    --move down
    if Input.pressed("down", true) then
        Assets.playSound("ui_move")
        self.selected_index = self.selected_index + 1
    end
    self.selected_index = Utils.clampWrap(self.selected_index, 1, self.songs_per_page)
    self.selected_index_memory[self.page] = self.selected_index

    --soul positions
    self.heart_target_y = 60 + 40 * (self.selected_index - 1)
    if math.abs(self.heart_target_x - self.heart.x) <= 2 then
        self.heart.x = self.heart_target_x
    end
    if math.abs(self.heart_target_y - self.heart.y) <= 2 then
        self.heart.y = self.heart_target_y
    end
    self.heart.x = self.heart.x + (self.heart_target_x - self.heart.x) / 2 * DTMULT
    self.heart.y = self.heart.y + (self.heart_target_y - self.heart.y) / 2 * DTMULT
end

function JukeboxMenu:close()
    Game.world.menu = nil
    self:remove()
end

return JukeboxMenu
