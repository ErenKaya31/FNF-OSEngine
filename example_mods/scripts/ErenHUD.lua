local engineTexts = {'Eren', 'Foxygood', 'idk anymore', 'Timothy', 'wuppado', 'Bobbby', 'your mom'}
local engineReal = 0

local botplayQuotes = {'CHEATER', 'you know if you keep being in botplay i will sue', 'bruh moment', 'cope', 'skill issue', 'sucker', 'wow a cheater', 'lol i know this is like a strident crisis randomized botplay text'}
local idk = 0

IntroTextSize = 25
IntroSubTextSize = 30
IntroTagColor = '00FF00'
IntroTagWidth = 15

local hudVersion = '0.7';

function onCreate()
    engineReal = getRandomInt(0, 7)
    idk = getRandomInt(0, 8)

local currentDif = getProperty('storyDifficultyText')

    makeLuaText('idkwhattoput', songName .. ' | ', 900, 190, 20)
    addLuaText('idkwhattoput')
    setTextSize('idkwhattoput', 20);

    makeLuaText('chartingMODECHEATER', 'CHARTING MODE', 900, 190, 20)
    addLuaText('chartingMODECHEATER')
    setTextSize('chartingMODECHEATER', 40);

    makeLuaText('newscore', songName .. ' | ', 900, 190, 70)
    addLuaText('newscore')
    setTextSize('newscore', 20);

    makeLuaText('missestext', songName .. ' | ', 900, 190, 100)
    addLuaText('missestext')
    setTextSize('missestext', 20);

    makeLuaText('accuracy', songName .. ' | ', 900, 190, 130)
    addLuaText('accuracy')
    setTextSize('accuracy', 20);

    makeLuaText('songType', 'Freeplay Mode', 900, 190, 160)
    addLuaText('songType')
    setTextSize('songType', 20);

    makeLuaText('versionText', 'ErenHUD ' .. hudVersion, 200, 5, 190)
    addLuaText('versionText')
    screenCenter('versionText', 'x')
    setTextSize('versionText', 20);

    makeLuaText('healthText', 'Health: ' .. math.floor(getProperty("health") * 50), 200, 900, 645)
    addLuaText('healthText')
    setTextSize('healthText', 20);
    screenCenter('healthText', 'x')

    makeLuaText('sicksText', 'Sicks: ' .. getProperty('sicks'), 500, 200, 10)
    addLuaText('sicksText')
    setTextSize('sicksText', 20);

    makeLuaText('goodsText', 'Cools: ' .. getProperty('goods'), 500, 300, 10)
    addLuaText('goodsText')
    setTextSize('goodsText', 20);

    makeLuaText('badsText', 'Bads: ' .. getProperty('bads'), 500, 400, 10)
    addLuaText('badsText')
    setTextSize('badsText', 20);

    makeLuaText('lolsText', 'Shits: ' .. getProperty('shits'), 500, 500, 10)
    addLuaText('lolsText')
    setTextSize('lolsText', 20);

    makeLuaText('ratingsText', 'Rating: ' .. getProperty('ratingName'), 500, 600, 10)
    addLuaText('ratingsText')
    setTextSize('ratingsText', 20);

    makeLuaText("sussy", songName .. " - " .. currentDif .. " | " ..engineTexts[engineReal].. " Engine (OS " .. version .. ')', 900, -300, 670)
    screenCenter('sussy', 'x')
    setTextSize('sussy', 18);
	addLuaText("sussy")

    makeLuaSprite('JukeBoxTag', 'empty', -305-IntroTagWidth, 15)
	makeGraphic('JukeBoxTag', 300+IntroTagWidth, 100, IntroTagColor)
	setObjectCamera('JukeBoxTag', 'other')
	addLuaSprite('JukeBoxTag', true)

	makeLuaSprite('JukeBox', 'empty', -305-IntroTagWidth, 15)
	makeGraphic('JukeBox', 300, 100, '000000')
	setObjectCamera('JukeBox', 'other')
	addLuaSprite('JukeBox', true)
	
	makeLuaText('JukeBoxText', 'Now Playing:', 300, -305-IntroTagWidth, 30)
	setTextAlignment('JukeBoxText', 'left')
	setObjectCamera('JukeBoxText', 'other')
	setTextSize('JukeBoxText', IntroTextSize)
	addLuaText('JukeBoxText')
	
	makeLuaText('JukeBoxSubText', songName, 300, -305-IntroTagWidth, 60)
	setTextAlignment('JukeBoxSubText', 'center')
	setObjectCamera('JukeBoxSubText', 'other')
	setTextSize('JukeBoxSubText', IntroSubTextSize)
	addLuaText('JukeBoxSubText')

        currentDif = getProperty('storyDifficultyText')
end

function onUpdatePost()
    local  timeElapsed = math.floor(getProperty('songTime')/1000)
    local  timeTotal = math.floor(getProperty('songLength')/1000)
    accuracyLua = math.floor((rating*100)*1000)/1000;

    setTextString('idkwhattoput', string.format("%.2d:%.2d", timeElapsed/60%60, timeElapsed%60) .. ' / ' .. string.format("%.2d:%.2d", timeTotal/60%60, timeTotal%60))
    setTextString('newscore', 'Score: ' .. getProperty('songScore'))
    setTextString('missestext', 'Misses: ' .. getProperty('songMisses'))
    setTextString('accuracy', 'Accuracy: ' .. accuracyLua .. '%')

    if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
        setProperty('idkwhattoput.y', getProperty('timeBar.y'))
        setProperty('newscore.y', 625)
        setProperty('missestext.y', 595)
        setProperty('accuracy.y', 565)
        setProperty('songType.y', 535)
        setProperty('versionText.y', 505)
        setProperty('sussy.y', 10)
        setProperty('botplayTxt.y', 130)
    end
    
    for i = 0, 7 do
    setObjectCamera('strumLineNotes', 'camGame') 
    end
    screenCenter('timeBarBG', 'x')
    screenCenter('timeBar', 'x')
    screenCenter('chartingMODECHEATER', 'x')
    screenCenter('chartingMODECHEATER', 'y')
    setProperty('timeTxt.visible', false)
    setProperty('scoreTxt.visible', false)
    setProperty('healthBar.x', 950)
    setProperty('ovovov.x', 945)
    screenCenter('healthBarBG', 'y')
    screenCenter('healthBar', 'y')
    setProperty('healthBar.angle', 90)
    setProperty('timeBar.y', 700)
    setProperty('healthBarBG.angle', 90)
    setProperty('ovovov.angle', 90)
    setProperty('ovovov.x', getProperty('healthBarBG.x'))
    setProperty('healthBarOverlay.visible', false)
    setProperty('timeBarBG.visible', false)
    scaleObject('timeBar', 1, 2)

    setProperty('newtimeback.y', getProperty('timeBarBG.y'))
    setProperty('idkwhattoput.y', getProperty('newtimeback.y'))

    setTextBorder('botplayTxt', 1, 'FF0000')
    setTextString('botplayTxt', botplayQuotes[idk])
    setProperty('botplayTxt.y', 565)
    setProperty('idkwhattoput.y', 695)

    setObjectOrder('newtimeback', 20000)
    setObjectOrder('idkwhattoput', 11000)
    setObjectOrder('healthBarBG', 10000)
    setObjectOrder('iconP1', 20000)
    setObjectOrder('iconP2', 21000)
    setProperty('chartingMODECHEATER.visible', false)

    setProperty('iconP1.x', screenWidth - 200)
    setProperty('iconP2.x', 20)
    setProperty('iconP1.y', 568)
    setProperty('iconP2.y', 558)

    if isStoryMode then
        setTextString('songType', 'Story Mode')
    end

    setTextString('healthText', 'Health: ' .. math.floor(getProperty("health") * 50) .. '%')

	if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
      setProperty('healthText.y', 35)
    end

if getPropertyFromClass('PlayState', 'chartingMode') == true then
     setProperty('chartingMODECHEATER.visible', true)
  end
end

function onSongStart()
    setPropertyFromClass("openfl.Lib", "application.window.title", songName .. ' | OS Engine v' .. version .. ' | Eren HUD ' .. hudVersion)

    doTweenX('MoveInOne', 'JukeBoxTag', 0, 1, 'CircInOut')
	doTweenX('MoveInTwo', 'JukeBox', 0, 1, 'CircInOut')
	doTweenX('MoveInThree', 'JukeBoxText', 0, 1, 'CircInOut')
	doTweenX('MoveInFour', 'JukeBoxSubText', 0, 1, 'CircInOut')
	
	runTimer('JukeBoxWait', 3, 1)

    debugPrint('Press 6 For Fullscreen!')
end

function onDestroy()
    setPropertyFromClass("openfl.Lib", "application.window.title", "Friday Night Funkin': Vs Bambi Pain Edition")
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'JukeBoxWait' then
		doTweenX('MoveOutOne', 'JukeBoxTag', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutTwo', 'JukeBox', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutThree', 'JukeBoxText', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutFour', 'JukeBoxSubText', -450, 1.5, 'CircInOut')
	end
end

function goodNoteHit(id, direction, isSustainNote)
   setProperty('iconP1.color', 0x00FF00)
   doTweenColor('E', 'iconP1', 'FFFFFF', 0.2, 'CircInOut')

   if isSustainNote then
         setProperty('iconP1.color', 0xFFFFFF)
   end
end

function noteMiss()
   setProperty('iconP1.color', 0xFF0000)
   doTweenColor('EA', 'iconP1', 'FFFFFF', 0.2, 'CircInOut')
end

function onRecalculateRating()
   setTextString('sicksText', 'Sicks: ' .. getProperty('sicks'))
   setTextString('goodsText', 'Cools: ' .. getProperty('goods'))
   setTextString('badsText', 'Bads: ' .. getProperty('bads'))
   setTextString('lolsText', 'Shits: ' .. getProperty('shits'))
   setTextString('ratingsText', 'FC: ' .. getProperty('ratingFC'))
end