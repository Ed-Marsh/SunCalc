# SunCalc library for B4X

SunCalc is a tiny BSD-licensed library originally written in JavaScript for calculating sun position, sunlight phases (times for sunrise, sunset, dusk, etc.), moon position and lunar phase for the given location and time, created by Vladimir Agafonkin (@mourner) as a part of the SunCalc.net project. This is my conversion to B4X of that project.


### SunCalc​

-   ### Classes​
    
    -   [SunCalc](https://www.b4x.com/android/forum/#0)
-   -   ### SunCalc​
        
        ### Functions:​
        
        -   **addTime** (angle As Double, riseName As String, setName As String)  
            _Allows additional Rise/Set angles to be added_
        -   **Initialize**  
            _Initializes the object._
        -   **MoonCoords** (date As Double) As Object  
            _Geocentric ecliptic coordinates of the moon  
            Returns Right ascension, declination & distance_
        -   **MoonIllumination** (date As Double) As Object  
            _Illumination of the moon on given date  
            Returns Fraction, phase & angle_
        -   **MoonPosition** (date As Double, lat As Double, lng As Double) As Object  
            _Position of the moon at a given date viewed from lat / lon  
            Returns azimuth, altitude, distance & parallacticAngle_
        -   **SunPosition** (date As Double, lng As Double, lat As Double) As Object  
            _Returns the Azimuth & altitude of the sun at the selected date, lat & lon_
        -   **TimesList** (date As Long, lat As Double, lng As Double) As Object  
            _Returns a list of Rise/Set times.  
            Sunrise / sunset (The moment the sun starts to appear / vanishes)  
            Sunrise End / Sunset Start (the moment the sun completely appears / starts to vanish)  
            Dawn / Dusk (First light can be detected / last light is lost)  
            Nautical Dawn / Nautical Dusk (as above, adjusted for being at sea)  
            Night End / Night (Hours of night)  
            Golden Hour / Blue Hour (Half way point between times of best light)_
