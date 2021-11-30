function onUpdate(elapsed)
	space = getPropertyFromClass('flixel.FlxG', 'keys.pressed.SPACE')
	health = getProperty('health')


	if space == true then
		noteTweenAlpha('1', 4, 0.1, 0.1, 'linear')
		noteTweenAlpha('2', 5, 0.1, 0.1, 'linear')
		noteTweenAlpha('3', 6, 0.1, 0.1, 'linear')
		noteTweenAlpha('4', 7, 0.1, 0.1, 'linear')
		setProperty('boyfriend.stunned', true);
	else
		noteTweenAlpha('1', 4, 100, 0.1, 'linear')
		noteTweenAlpha('2', 5, 100, 0.1, 'linear')
		noteTweenAlpha('3', 6, 100, 0.1, 'linear')
		noteTweenAlpha('4', 7, 100, 0.1, 'linear')
		setProperty('boyfriend.stunned', false);
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Hurt Note' and isSustainNote == false then
		if space == true then
			characterPlayAnim('boyfriend', 'dodge', true)
		else
			characterPlayAnim('boyfriend', 'hurt', true)
			setProperty('health',health - 0.3)
		end
	end
end



end
