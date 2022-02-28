function onEvent(n,v1,v2)
	if n == "TweenSpin" then
		if Modchart then
			runTimer('tweenstop',0.35);
			-- bf notespin
			noteTweenAngle('A',4 , 360 , 0.35, "quintOut")
			noteTweenAngle('B',5 , 360 , 0.35, "quintOut")
			noteTweenAngle('C',6 , 360 , 0.35, "quintOut")
			noteTweenAngle('D',7 , 360 , 0.35, "quintOut")

			-- oppt notespin
			noteTweenAngle('E',0 , 360 , 0.35, "quintOut")
			noteTweenAngle('F',1 , 360 , 0.35, "quintOut")
			noteTweenAngle('G',2 , 360 , 0.35, "quintOut")
			noteTweenAngle('H',3 , 360 , 0.35, "quintOut")
		end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'tweenstop' then
		noteTweenAngle('A',4 , 0 , 0.0001, "linear")
		noteTweenAngle('B',5 , 0 , 0.0001, "linear")
		noteTweenAngle('C',6 , 0 , 0.0001, "linear")
		noteTweenAngle('D',7 , 0 , 0.0001, "linear")

		-- oppt notespin
		noteTweenAngle('E',0 , 0 , 0.0001, "linear")
		noteTweenAngle('F',1 , 0 , 0.0001, "linear")
		noteTweenAngle('G',2 , 0 , 0.0001, "linear")
		noteTweenAngle('H',3 , 0 , 0.0001, "linear")

		if not downscroll then
			noteTweenY('B', 4, 50, 0.25, "quintOut")
			noteTweenY('A', 5, 50, 0.25, "quintOut")
			noteTweenY('C', 6, 50, 0.25, "quintOut")
			noteTweenY('D', 7, 50, 0.25, "quintOut")

			noteTweenX('B2', 4, 740, 0.25, "quintOut")
			noteTweenX('A2', 5, 850, 0.25, "quintOut")
			noteTweenX('C2', 6, 960, 0.25, "quintOut")
			noteTweenX('D2', 7, 1070, 0.25, "quintOut")
		end
		if downscroll then
			noteTweenY('B', 4, 570, 0.25, "quintOut")
			noteTweenY('A', 5, 570, 0.25, "quintOut")
			noteTweenY('C', 6, 570, 0.25, "quintOut")
			noteTweenY('D', 7, 570, 0.25, "quintOut")

			noteTweenX('B2', 4, 740, 0.25, "quintOut")
			noteTweenX('A2', 5, 850, 0.25, "quintOut")
			noteTweenX('C2', 6, 960, 0.25, "quintOut")
			noteTweenX('D2', 7, 1070, 0.25, "quintOut")
		end
    end
end
