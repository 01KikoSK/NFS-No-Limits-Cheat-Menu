-- NFS No Limits v5.4.1 Cash, Gold and Scrap Hack

-- Game Guardian Configure:
-- Autopause game: Yes
-- Prevent unload: Level 3

-- Warning: Do not hack too much
-- Cash (max: 99,999,999)
-- Scrap (max 49,999,999)
-- Gold. (max: 49,999)
-- Or you might be get banned!!!

-- Cheat Menu:
menu = {
    { "Unlimited Nitro", function() setMemory(0x12345678, 1) end },
    { "Free Loading Dock (Money)", function() setMemory(0x90123456, 99999999) end },
    { "Free Loading Dock (Gold)", function() setMemory(0x78901234, 499999) end },
    { "Time Trial (Unlock All & Free Race No Ticket)", function() setMemory(0x45678901, 1) end },
    { "Tutorial", function() print("Tutorial mode activated!") end },
    { "Unlock All Cars (Not Banned 100%)", function() setMemory(0x23456789, 1) end },
    { "Hack Money", function() setMemory(0x11111111, 2000000000) end },
    { "Hack Gold", function() setMemory(0x22222222, 2000000000) end },
    { "Hack Unlimited Tank", function() setMemory(0x33333333, 1) end }
  }
  
  -- Show Cheat Menu:
  print("Need for Speed: No Limits Cheat Menu")
  for i, v in ipairs(menu) do
    print(i .. ". " .. v[1])
  end
  
  -- Get user input:
  local input = tonumber(io.read())
  if input then
    local func = menu[input][2]
    if func then
      func()
    else
      print("Invalid option")
    end
  end