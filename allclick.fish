sleep 2

function moveIt
  xdotool mousemove --sync --window 92274699 $argv[1] $argv[2]
end

function clickIt
  for y in (seq $argv[1])
    xdotool click 1
    sleep 0.01
  end
end

function clickOrb
  moveIt 500 400
  clickIt 100
end


function clickMage
  moveIt 375 600
  clickIt 2
  moveIt 435 600
  clickIt 2
end


function clickBuilding
  moveIt 775 525
  clickIt 2
  moveIt 775 475
  clickIt 2
  moveIt 775 375
  clickIt 2
  moveIt 775 325
  clickIt 2
  moveIt 775 250
  clickIt 2
  moveIt 775 175
  clickIt 2
  moveIt 775 100
  clickIt 2
  moveIt 775 50
  clickIt 2
end
  

function clickVoid
  moveIt 325 325
  clickIt 2
  moveIt 425 200
  clickIt 2
  moveIt 600 200
  clickIt 2
  moveIt 700 300
  clickIt 2
end
  
function clickUpgrade
  moveIt 50 200
  clickIt 2
end
  

for x in (seq 1000000)
  for y in (seq 4)
    clickOrb
    clickMage
    clickUpgrade
    clickVoid
  end
  clickBuilding
end
