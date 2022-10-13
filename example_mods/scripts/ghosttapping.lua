function onUpdate()
   if songName == 'Unfairness' and songName == 'Exploitation' then
      setPropertyFromClass('ClientPrefs', 'ghostTapping', false)
   else
      setPropertyFromClass('ClientPrefs', 'ghostTapping', true)
   end

   setPropertyFromClass('ClientPrefs', 'hideWatermark', true)
end