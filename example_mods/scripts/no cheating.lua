function onCreatePost()
   --setProperty('debugKeysChart', null);
end

function onUpdatePost()
   if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
      --io.popen("error your mom");
   end
end