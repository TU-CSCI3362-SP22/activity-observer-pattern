# Learning the Observer with WeatherData

This activity is designed to be completed in groups of 1-3. Phase 1 involves familiarizing yourself with the existing code base and add features. In Phase 2 we will cover the observer pattern in the abstract. In Phase 3 you will implement the observer pattern.


# Phase 1 - Familiarize yourself with WeatherData 

Look at the code :) 

WeatherData, which is an object meant to keep track of temperature, humidity, and pressure, holds three objects that it can use to display it's data: 

1) AlertBox
2) Ticker 
3) Webpage

Which it holds as instance variables alongside it weather statistics. 

While these are not fully implemented display mediums, you could use your imagination to think about how these could be elaborated upon to become fully fledged. 

Familiarize yourself with how WeatherData passes its data along to both Ticker and WebPage.


# Phase 2 - Implementing calls to AlertBox

**AlertBox** is special in the sense that it should only display information if weather statistics meet some criteria, such as the temperature being too high or too low. 

On the instance side of WeatherData, you can see there is a method **setTemperature**, which creates a random number between 70 and 110 and passes it to the **AlertBox's** method **temperatureAlert**. 

You will need to implement **setHumidity** and **setPressure**, so that WeatherData will be able  alert the AlertBox of concerning levels of humidity or pressure. These are essentially the same as **setTemperature**, except calling the AlertBox's corresponding **[parameter]Alert** method. 

 To set reasonable parameters for these alerts to go off, consider changing the thresholds in both the AlertBox and the **set[Parameter]** methods. 

To test if your methods work, run this code in playground (Make sure that **sampleWeatherData** has calls to both **setPressure** and **setTemperature**): 

 

     WeatherData new sampleWeatherData.   

  
It should open a transcript and two white text morphs (which you can close using [Alt+Shift+M1]). If the random number generated a number that meets your threshold, the transcript should give some helpful advice on how to deal with the nasty weather. 

Takeaways:

Looking at WebPage, Ticker, and AlertBox (specifically in sampleWeatherData method) we can see that three different patterns of pulling/pushing data are used. 
- The Ticker class asks it's WeatherData instance variable for updates
- AlertBox gets the data from a push from WeatherData 
- WebPage takes humidity,temperature, and humidity seperately as method parameters to update. 

This is bad. Absolutely disgusting. Currently, there is no standard way to implement  an object that updates according to changes in WeatherData. Instead, it may be better to utilize the Observer pattern. 

# The Observer Pattern
This pattern designates an object as a subject which keeps a list of all of its dependents, called observers. This is usually implemented by the subject  calling an update() method in each of it observers whenever it changes state. This pattern is often used in event handling. The Angular front-end framework, for example, uses observers extensively. 


# Phase 3 - Observer Time 

After hearing of the glory of the Observer Pattern, you must now implement it. 

- Make a **ConcreteObserver** class which has temperature, humidity, and pressure as instance variables. 
- Change **AlertBox**, **Ticker**, and **WebPage** to be subclasses of **ConcreteObserver**. 
- In **WeatherData's** instance variables , take away **Ticker**, **WebPage**, and **AlertBox**  and add an observers ordered collection.
- In **WeatherData's** initialize, add a **Ticker**, **WebPage**, and **AlertBox**  to the observers collection. 
- In **ConcreteObserver** make **temperatureUpdate**  **humidityUpdate** and **pressureUpdate** which update the object's instance variables (similar to what was in the WebPage in Phase 1).
-  Implement these methods in **Ticker**, **AlertBox**, **AlertBox**. You will need to use the **super**. 
	- **AlertBox's **  **update** method will also call each of it's corresponding **[parameter]Alert** methods. 
	- **Ticker's** **update** method will also keep the textMorph code that was in it's old **update** 
	`textMorph contents:  'Temperature: ', temp asString, ' || Humidity: ', hum asString, ' || Pressure: ', pres asString`
	- **WebPage's**  **update** method will also keep the transcript show code that was in it's old **update**. 
- Now, in WeatherData, remove the old **set** methods and replace it with one **setWeather** method which generates a random number and passes it to the **update** method of all of the objects in **WeatherData's** observers collection. 

To test if you have implemented the Observer Pattern correctly, change the sampleWeatherData method to just call setWeather and run this (you also may have to delete updateEverything): 

    WeatherData sampleWeatherData
It should work the same as before!
