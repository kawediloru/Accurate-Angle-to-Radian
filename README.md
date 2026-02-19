# Accurate-Angle-to-Radian (AA2R)
Converts angles to radians through scoreboard operations (painful!!!)
Usage: `/function aa2r:angle_to_rads {int: <000-360>, dec: <000000-999999>}`
> `int` field is a 3 digit number for the integer part of the angle.
> `dec` field is a 6 digit number for the decimal part of the angle.



### Example
For 51.842 degrees, `/function aa2r:angle_to_rads {int: 51, dec: 842000}` -> `Radians: 0.9048d`
(note that due to flooring, many values will be off by around 0.00001)
