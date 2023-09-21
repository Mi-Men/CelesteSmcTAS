-- 此 lua 脚本用于 超级马里奥世界 celeste 改版，使用 BizHawk 来加载此脚本

-- 获取玩家信息，信息有 坐标、速度、加速度、冲刺次数
local function getPlayerInfo()
	local posX = memory.read_s16_le(0x000094) + (memory.read_u8(0x0013DA) / 16 / 16);
	local posY = memory.read_s16_le(0x000096) + (memory.read_u8(0x0013DC) / 16 / 16);
	local velX = memory.read_s8(0x00007B) / 16;
	local velY = memory.read_s8(0x00007D) / 16;
	local acceleration = math.floor(memory.read_u8(0x0013E4) / 112 * 100).."%";
	local dashCount = memory.read_u8(0x0018C5);
	local dashCooling = memory.read_u8(0x0018C6);

	return "Pos_X: "..posX
	.."\nPos_Y: "..posY
	.."\nVel_X: "..velX
	.."\nVel_Y: "..velY
	.."\nAcceleration: "..acceleration.." ("..memory.read_u8(0x0013E4)..")"
	.."\nDash_Count: "..dashCount
	.."\nDash_Cooling: "..dashCooling
end

-- 获取游戏时间
local function getGameTime()
	local fps = 60.0984755;

	local frameTime = 1 / fps;
	local gameTime = math.floor(emu.framecount() * frameTime * 1000);
	if movie.isloaded() and emu.framecount() >= movie.length() then
		gameTime = math.floor(movie.length() * frameTime * 1000);
	end

	local hour = math.floor(gameTime / (60 * 60 * 1000));
	local minute = math.floor((gameTime % (1000 * 60 * 60)) / (1000 * 60));
	local second = math.floor((gameTime % (1000 * 60)) / 1000);
	local millisecond = math.floor(gameTime % 1000);

	if minute < 10 then minute = "0"..minute end
	if second < 10 then second = "0"..second end
	if millisecond < 10 then millisecond = "00"..millisecond;
	elseif millisecond < 100 then millisecond = "0"..millisecond end

	return hour..":"..minute..":"..second.."."..millisecond
end

-- 获取每帧按下的按键
local function getJoypadFranmeButton()
	local playerJoypadButtonInfo = {};

	for key, value in pairs(joypad.getwithmovie()) do
		if value then
			table.insert(playerJoypadButtonInfo, string.sub(key, 4, -1));
		end
	end

	return playerJoypadButtonInfo;
end

-- 检查按键是否一致
local function isButtonList(list1, list2)
	local isButton = false;

	if #list1 > #list2 then
		for i = 1, #list1, 1 do
			for j = 1, #list2, 1 do
				if list1[i] == list2[j] then
					isButton = true;
					break;
				else
					isButton = false;
				end
			end

			if not isButton then
				break;
			end
		end
	else
		for i = 1, #list2, 1 do
			for j = 1, #list1, 1 do
				if list2[i] == list1[j] then
					isButton = true;
					break;
				else
					isButton = false;
				end
			end

			if not isButton then
				break
			end
		end
	end

	return isButton;
end

-- 按键列表
local buttonList = {{0, {}}};
-- 获取每次按下按键的列表
local function getJoypadButtonList()
	-- 要返回的结果
	local str = "";

	local frameButtonList = getJoypadFranmeButton();
	table.sort(frameButtonList);

	if #frameButtonList == 0 then
		if #buttonList[1][2] == 0 then
			buttonList[1][1] = buttonList[1][1] + 1;
		else
			table.insert(buttonList, 1, {1, frameButtonList});
			table.remove(buttonList, 10);
		end
	else
		if #buttonList == 0 then
			table.insert(buttonList, 1, {1, frameButtonList});
			table.remove(buttonList, 10);
		else
			if isButtonList(buttonList[1][2], frameButtonList) then
				buttonList[1][1] = buttonList[1][1] + 1;
			else
				table.insert(buttonList, 1, {1, frameButtonList});
				table.remove(buttonList, 10);
			end
		end
	end

	for key, value in pairs(buttonList) do
		str = value[1]..": "..table.concat(value[2], ", ").."\n"..str;
	end

	return str;
end

while true do
	gui.text(3, 3, getPlayerInfo());
	gui.text(3, 3, getGameTime(), 0xFFFFFFFF, "bottomright");
	gui.text(3, 3, getJoypadButtonList(), 0xFFFFFFFF, "bottomleft");
	emu.frameadvance();
end