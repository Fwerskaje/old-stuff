module Test where
sayHello = putStrLn "Hello, World"

sumSquares x y = x ^ 2 + y ^ 2

lenVec3 x y z = 
	sqrt (x^2 + y^2 + z^2)

sign x = 
	if x > 0 then
		1
		else
			if x == 0 then
				0
			else
				-1