local tipsList = {'Press 4 if you are dying or when you are new', 'Dont spam, there is anti-spam', 'Dont press 7 on Exploitation', 'You can spam on Exploitation because i turned the Anti-Spam off'}
randomizer = 0

function onCreate()
   randomizer = getRandomInt(0, 4)

   makeLuaText('composers', 'Song Maded By: NAME', 800, 5, 750)
   addLuaText('composers')
   screenCenter('composers', 'x')
   setTextSize('composers', 25)

   makeLuaText('charters', 'Song Charted By: NAME', 800, 5, 800)
   addLuaText('charters')
   screenCenter('charters', 'x')
   setTextSize('charters', 25)

   makeLuaText('protips', 'Tip: ' .. tipsList[randomizer], 800, 5, 850)
   addLuaText('protips')
   screenCenter('protips', 'x')
   setTextSize('protips', 25)
end

function onSongStart()
   doTweenY('comehere', 'composers', 500, 2, 'CircInOut')
   doTweenY('youtoo', 'charters', 540, 2, 'CircInOut')
   doTweenY('tipslol', 'protips', 580, 2, 'CircInOut')
end

function onUpdate()
   if curBeat == 16 then
      doTweenY('comehere', 'composers', 750, 2, 'CircInOut')
      doTweenY('youtoo', 'charters', 750, 2, 'CircInOut')
      doTweenY('tipslol', 'protips', 750, 2, 'CircInOut')
   end

   if songName == 'Corn Theft' then
      setTextString('composers', 'Song Maded By: MoldyGH')
      setTextString('charters', 'Song Charted By: RhythmShadow')
   end

   if songName == 'Blocked' then
      setTextString('composers', 'Song Maded By: MoldyGH')
      setTextString('charters', 'Song Charted By: VDAB Team')
   end

   if songName == 'Flintcorn' then
      setTextString('composers', 'Song Maded By: BobbbyOfficial')
      setTextString('charters', 'Song Charted By: BobbbyOfficial')
   end

   if songName == 'Maze' then
      setTextString('composers', 'Song Maded By: MoldyGH')
      setTextString('charters', 'Song Charted By: VDAB Team')
   end

   if songName == 'Stop' then
      setTextString('composers', 'Song Maded By: Eren Kaya')
      setTextString('charters', 'Song Charted By: Eren Kaya')
   end

   if songName == 'The Phone' then
      setTextString('composers', 'Song Maded By: Eren Kaya')
      setTextString('charters', 'Song Charted By: Eren Kaya')
   end

   if songName == 'Screwed' then
      setTextString('composers', 'Song Maded By: TPTF')
      setTextString('charters', 'Song Charted By: VDAB Team')
   end

   if songName == 'Indignancy' then
      setTextString('composers', 'Song Maded By: MoldyGH')
      setTextString('charters', 'Song Charted By: VDAB Team')
   end

   if songName == 'Get Out' then
      setTextString('composers', 'Song Maded By: Eren Kaya')
      setTextString('charters', 'Song Charted By: Eren Kaya')
   end

   if songName == 'Overthink' then
      setTextString('composers', 'Song Maded By: LiterallyWize')
      setTextString('charters', 'Song Charted By: Eren Kaya')
   end

   if songName == 'Reality breaking' then
      setTextString('composers', 'Song Maded By: Pyramix')
      setTextString('charters', 'Song Charted By: Eren Kaya')
   end

   if songName == 'Cheating' then
      setTextString('composers', 'Song Maded By: MoldyGH')
      setTextString('charters', 'Song Charted By: VDAB Team')
   end

   if songName == 'Unfairness' then
      setTextString('composers', 'Song Maded By: MoldyGH')
      setTextString('charters', 'Song Charted By: VDAB Team')
   end

   if songName == 'Exploitation' then
      setTextString('composers', 'Song Maded By: Oxygen')
      setTextString('charters', 'Song Charted By: VDAB Team')
   end
end