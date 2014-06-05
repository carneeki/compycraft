-- author: Adam Carmichael <carneeki@carneeki.net>
-- package: compycraft
-- descr: Looped one shot timer with countdown and lamp to indicate running
-- state (lamp is inverted redstone signal)

local runtime=5
term.clear()
term.setCursorPos(1,1)
redstone.setOutput("top", true) -- lamp off (inverted)
redstone.setOutput("back", false) -- motor off

while true do
  write("Runtime (seconds): ")
  runtime = tonumber(read())
  redstone.setOutput("top", false) -- lamp on
  redstone.setOutput("back", true) -- motor on

  for i=1,runtime do
    write(runtime-i .. "s remaining...\n")
    sleep(1)
  end
  redstone.setOutput("top", true) -- lamp off
  redstone.setOutput("back", false) -- motor off
end
