local turnvalue = 10
function onBeatHit()

if curBeat % 2 == 0 then

setProperty('iconP2.angle',-turnvalue)
setProperty('iconP1.angle',turnvalue)

setProperty('iconP2.x',-turnvalue)
setProperty('iconP1.x',turnvalue)
end

if curBeat % 4 == 0 then

setProperty('iconP1.angle',-turnvalue)
setProperty('iconP2.angle',turnvalue)

setProperty('iconP2.x',-turnvalue)
setProperty('iconP1.x',turnvalue)
end
end