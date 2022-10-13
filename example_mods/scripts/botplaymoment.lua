AllowBotplay = false
function onUpdate(elapsed)
     if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.FOUR') and not AllowBotplay then
          AllowBotplay = true
          setProperty('cpuControlled', true)
          setProperty('botplayTxt.visible', true)
     elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.FOUR') and AllowBotplay then
          AllowBotplay = false
          setProperty('cpuControlled', false)
          setProperty('botplayTxt.visible', false)
     end
end