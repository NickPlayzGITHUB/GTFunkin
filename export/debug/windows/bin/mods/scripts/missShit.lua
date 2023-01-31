local anims = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'}

function noteMissPress(direction)
   if getProperty('boyfriend.hasMissAnimations') then
   else
      characterPlayAnim('boyfriend', anims[direction + 1], true)
      setProperty('boyfriend.color', getColorFromHex('5f1ea4'));   
   end
end

function noteMiss(id, direction, noteType, isSustainNote)
   if getProperty('boyfriend.hasMissAnimations') then
   else
   characterPlayAnim('boyfriend', anims[direction + 1], true)
   setProperty('boyfriend.color', getColorFromHex('5f1ea4'));
   end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
   if getProperty('boyfriend.hasMissAnimations') then
   else
      setProperty('boyfriend.color', 16777215);
   end
end

function onUpdate()
   if getProperty('boyfriend.hasMissAnimations') then
   else
      if getProperty('boyfriend.animation.curAnim.name') == 'idle' or getProperty('boyfriend.animation.curAnim.name') == 'danceLeft' or getProperty('boyfriend.animation.curAnim.name') == 'danceRight' then
         setProperty('boyfriend.color', 16777215);
      end
   end
end