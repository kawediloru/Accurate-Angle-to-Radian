## INPUT IS SCALED BY 10^6

# Initialize all necessary variables
scoreboard players set #180e+0 aa2r.const 180
scoreboard players set #180e+1 aa2r.const 1800
scoreboard players set #180e+2 aa2r.const 18000
scoreboard players set #180e+3 aa2r.const 180000
scoreboard players set #180e+4 aa2r.const 1800000
scoreboard players set #180e+5 aa2r.const 18000000
scoreboard players set #180e+6 aa2r.const 180000000
scoreboard players set #180e+7 aa2r.const 1800000000

scoreboard players set #10^0 aa2r.const 1
scoreboard players set #10^1 aa2r.const 10
scoreboard players set #10^2 aa2r.const 100
scoreboard players set #10^3 aa2r.const 1000
scoreboard players set #10^4 aa2r.const 10000
scoreboard players set #10^5 aa2r.const 100000
scoreboard players set #10^6 aa2r.const 1000000
scoreboard players set #10^7 aa2r.const 10000000
scoreboard players set #10^8 aa2r.const 100000000

scoreboard players set #pi aa2r.const 31415927



# Get parts of input
$scoreboard players set #input aa2r.var $(int)
$scoreboard players set #dec aa2r.var $(dec)
scoreboard players operation #input aa2r.var += #dec aa2r.var

scoreboard players operation #input_1 aa2r.var = #input aa2r.var
scoreboard players operation #input_2 aa2r.var = #input aa2r.var
scoreboard players operation #input_3 aa2r.var = #input aa2r.var
scoreboard players operation #input_4 aa2r.var = #input aa2r.var
scoreboard players operation #input_5 aa2r.var = #input aa2r.var
scoreboard players operation #input_6 aa2r.var = #input aa2r.var
scoreboard players operation #input_7 aa2r.var = #input aa2r.var
scoreboard players operation #input_8 aa2r.var = #input aa2r.var
scoreboard players operation #input_9 aa2r.var = #input aa2r.var

scoreboard players operation #input_1 aa2r.var /= #10^8 aa2r.const
scoreboard players operation #input_2 aa2r.var /= #10^7 aa2r.const
scoreboard players operation #input_3 aa2r.var /= #10^6 aa2r.const
scoreboard players operation #input_4 aa2r.var /= #10^5 aa2r.const
scoreboard players operation #input_5 aa2r.var /= #10^4 aa2r.const
scoreboard players operation #input_6 aa2r.var /= #10^3 aa2r.const
scoreboard players operation #input_7 aa2r.var /= #10^2 aa2r.const
scoreboard players operation #input_8 aa2r.var /= #10^1 aa2r.const

scoreboard players operation #input_1 aa2r.var %= #10^1 aa2r.const
scoreboard players operation #input_2 aa2r.var %= #10^1 aa2r.const
scoreboard players operation #input_3 aa2r.var %= #10^1 aa2r.const
scoreboard players operation #input_4 aa2r.var %= #10^1 aa2r.const
scoreboard players operation #input_5 aa2r.var %= #10^1 aa2r.const
scoreboard players operation #input_6 aa2r.var %= #10^1 aa2r.const
scoreboard players operation #input_7 aa2r.var %= #10^1 aa2r.const
scoreboard players operation #input_8 aa2r.var %= #10^1 aa2r.const
scoreboard players operation #input_9 aa2r.var %= #10^1 aa2r.const



# Convert each digit of angle to rads
scoreboard players operation #input_1 aa2r.var *= #pi aa2r.const
scoreboard players operation #input_1 aa2r.var /= #180e+0 aa2r.const

scoreboard players operation #input_2 aa2r.var *= #pi aa2r.const
scoreboard players operation #input_2 aa2r.var /= #180e+1 aa2r.const

scoreboard players operation #input_3 aa2r.var *= #pi aa2r.const
scoreboard players operation #input_3 aa2r.var /= #180e+2 aa2r.const

scoreboard players operation #input_4 aa2r.var *= #pi aa2r.const
scoreboard players operation #input_4 aa2r.var /= #180e+3 aa2r.const

scoreboard players operation #input_5 aa2r.var *= #pi aa2r.const
scoreboard players operation #input_5 aa2r.var /= #180e+4 aa2r.const

scoreboard players operation #input_6 aa2r.var *= #pi aa2r.const
scoreboard players operation #input_6 aa2r.var /= #180e+5 aa2r.const

scoreboard players operation #input_7 aa2r.var *= #pi aa2r.const
scoreboard players operation #input_7 aa2r.var /= #180e+6 aa2r.const

scoreboard players operation #input_8 aa2r.var *= #pi aa2r.const
scoreboard players operation #input_8 aa2r.var /= #180e+7 aa2r.const

scoreboard players operation #input_9 aa2r.var *= #pi aa2r.const
scoreboard players operation #input_9 aa2r.var /= #180e+7 aa2r.const
scoreboard players operation #input_9 aa2r.var /= #10^1 aa2r.const


# Combine digits and store output
scoreboard players operation #rads aa2r.var = #input_1 aa2r.var
scoreboard players operation #rads aa2r.var += #input_2 aa2r.var
scoreboard players operation #rads aa2r.var += #input_3 aa2r.var
scoreboard players operation #rads aa2r.var += #input_4 aa2r.var
scoreboard players operation #rads aa2r.var += #input_5 aa2r.var
scoreboard players operation #rads aa2r.var += #input_6 aa2r.var
scoreboard players operation #rads aa2r.var += #input_7 aa2r.var
scoreboard players operation #rads aa2r.var += #input_8 aa2r.var
scoreboard players operation #rads aa2r.var += #input_9 aa2r.var
scoreboard players operation #rads aa2r.var += #10^0 aa2r.const

execute store result storage aa2r:out rads double 0.00001 run scoreboard players get #rads aa2r.var


# Clean up
scoreboard players reset #180e+0 aa2r.const
scoreboard players reset #180e+1 aa2r.const
scoreboard players reset #180e+2 aa2r.const
scoreboard players reset #180e+3 aa2r.const
scoreboard players reset #180e+4 aa2r.const
scoreboard players reset #180e+5 aa2r.const
scoreboard players reset #180e+6 aa2r.const
scoreboard players reset #180e+7 aa2r.const
scoreboard players reset #10^-1 aa2r.const
scoreboard players reset #10^0 aa2r.const
scoreboard players reset #10^1 aa2r.const
scoreboard players reset #10^2 aa2r.const
scoreboard players reset #10^3 aa2r.const
scoreboard players reset #10^4 aa2r.const
scoreboard players reset #10^5 aa2r.const
scoreboard players reset #10^6 aa2r.const
scoreboard players reset #10^7 aa2r.const
scoreboard players reset #10^8 aa2r.const
scoreboard players reset #pi aa2r.const
scoreboard players reset #dec aa2r.var
scoreboard players reset #input aa2r.var
scoreboard players reset #input_1 aa2r.var
scoreboard players reset #input_2 aa2r.var
scoreboard players reset #input_3 aa2r.var
scoreboard players reset #input_4 aa2r.var
scoreboard players reset #input_5 aa2r.var
scoreboard players reset #input_6 aa2r.var
scoreboard players reset #input_7 aa2r.var
scoreboard players reset #input_8 aa2r.var
scoreboard players reset #input_9 aa2r.var

data remove storage aa2r:temp input