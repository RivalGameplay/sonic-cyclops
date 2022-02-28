function onCreate()
	makeAnimatedLuaSprite('tails','sprites/tails_do_not',850, 0)
	addAnimationByPrefix('tails','hit','tails no',24,false)
	setScrollFactor('tails', 0, 0);
	scaleObject('tails', 0.4, 0.4);
	addLuaSprite('tails', true)
	setProperty('tails.alpha',0)
	setObjectCamera('tails','camOther')

	makeAnimatedLuaSprite('knux','sprites/knucklees',485, 0)
	addAnimationByPrefix('knux','khit','kuckles no',24,false)
	setScrollFactor('knux', 0, 0);
	scaleObject('knux', 0.5, 0.5);
	addLuaSprite('knux', true)
	setProperty('knux.alpha',0)
	setObjectCamera('knux','camOther')

	setProperty("healthBar.max",1)
end

function onEvent(n,v1,v2)
	if n == "TailsHit" then
		if Modchart then
			--setups
			if not downscroll then
				setProperty('tails.alpha',1)
				objectPlayAnimation('tails', 'hit');
				runTimer('hidetails',1.2)
				runTimer('movearrows',0.86)
			end
			if downscroll then
				setProperty('knux.alpha',1)
				objectPlayAnimation('knux', 'khit');
				runTimer('hideknux',2)
				runTimer('movearrows2',1.5)
			end
		end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'hidetails' then
		setProperty('tails.alpha',0)
    end
	if tag == 'hideknux' then
		setProperty('knux.alpha',0)
    end
	if tag == 'movearrows' then
		--tweens
		if difficulty == 0 then
			noteTweenY('B3', 4, 50 + math.random(0, 35), 0.25, "quintOut")
			noteTweenY('A3', 5, 50 + math.random(-35, 0), 0.25, "quintOut")
			noteTweenY('C3', 6, 50 + math.random(-35, 0), 0.25, "quintOut")
			noteTweenY('D3', 7, 50 + math.random(0, 35), 0.25, "quintOut")

			local punch1 = math.random(-25,0)
			local knockFactor = punch1 * 0.75;
			local punch2 = punch1 - math.random(25,75) - knockFactor;
			knockFactor = knockFactor * 0.75
			local punch3 = punch2 - math.random(25,75) - knockFactor
			knockFactor = knockFactor * 0.75
			local punch4 = punch3 - math.random(25,75) - knockFactor

			noteTweenX('B2', 4, 740 + punch4, 0.25, "quintOut")
			noteTweenX('A2', 5, 850 + punch3, 0.25, "quintOut")
			noteTweenX('C2', 6, 960 + punch2, 0.25, "quintOut")
			noteTweenX('D2', 7, 1070 + punch1, 0.25, "quintOut")

			noteTweenAngle('AngleA',4 , math.random(10, 50)  , 0.25, "quintOut")
			noteTweenAngle('AngleB',5 , math.random(0, 60)  , 0.25, "quintOut")
			noteTweenAngle('AngleC',6 , math.random(5, 50)  , 0.25, "quintOut")
			noteTweenAngle('AngleD',7 , math.random(20, 50)  , 0.25, "quintOut")
		end
    end
	if tag == 'movearrows2' then
		--tweens
		if difficulty == 0 then
			noteTweenY('B3', 4, 570 - math.random(0, 35), 0.25, "quintOut")
			noteTweenY('A3', 5, 570 - math.random(-35, 0), 0.25, "quintOut")
			noteTweenY('C3', 6, 570 - math.random(-35, 0), 0.25, "quintOut")
			noteTweenY('D3', 7, 570 - math.random(0, 35), 0.25, "quintOut")

			local punch1 = math.random(-85,-35)
			local punch2 = punch1 + math.random(15,35);

			noteTweenX('B2', 4, 740 + punch1, 0.25, "quintOut")
			noteTweenX('A2', 5, 850 + punch2, 0.25, "quintOut")
			noteTweenX('C2', 6, 960 - punch2, 0.25, "quintOut")
			noteTweenX('D2', 7, 1070 - punch1, 0.25, "quintOut")

			noteTweenAngle('AngleA',4 , math.random(10, 50)  , 0.25, "quintOut")
			noteTweenAngle('AngleB',5 , math.random(0, 60)  , 0.25, "quintOut")
			noteTweenAngle('AngleC',6 , math.random(5, 50)  , 0.25, "quintOut")
			noteTweenAngle('AngleD',7 , math.random(20, 50)  , 0.25, "quintOut")
		end
	end
end
