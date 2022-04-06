# Learning the Observer with WeatherData

This activity is designed to be completed in groups of 1-3. Phase 1 involves familiarizing yourself with the existing code. In Phase 2 we will add additional features. In Phase 3 we  cover the observer pattern in the abstract, and you will implement the observer pattern for this code.


# Phase 1 - Familiarize yourself with WeatherData 

Look at the code.! `WeatherData` is an object meant to keep track of temperature, humidity, and pressure. It currently holds two objects that it can use to display its data: 

1) `AlertBox`
2) `Ticker `

Which it holds as instance variables alongside its weather statistics. While these are not fully implemented display mediums, you could use your imagination to think about how these could be elaborated upon to become fully fledged. Familiarize yourself with how WeatherData passes its data along to both Ticker and AlertBox.

OT check the code, use the following in a Playground.
```Smalltalk
	| wd |
	wd := WeatherData new.
	wd getReadings.
	wd getReadings.
```

It should open a transcript and one white text morphs. If the random number generated a number that meets your threshold, the transcript should give some helpful advice on how to deal with the nasty weather.  You might have to repeat the `getReadings` call several times to trigger an alert.  To close one morph, use [Alt+Shift+Left Mouse Button], or to remove all text morphs call `wd cleanMorphs`.

# Phase 2 - Extending the Weather Data

## Humidity Alerts
`AlertBox` is special in the sense that it should only display information if weather statistics meet some criteria, such as the temperature being too high or too low. The alert box currently checks temperature and pressure, but not the humidity. Add this feature!

1. Add a `humidity` instance variable to `AlertBox`
2. Add a `humidityAlert:` method to `AlertBox` that sets the humidity variable. If the humidity is above 75, send an alert to the `Transcript`.
3. Update the `getReadings` method in `WeatherData` to pass the humidity along to the `AlertBox` it holds.

## Attaching a Web page
Another team gave us the API for their webpage, represented in the `WebPage` class. We would love to attach this to our `WeatherData`

1. Add a `webpage` instance variable to `WeatherData`
   - Be sure to initialize this correctly!
3. Update the `getReadings` method to correctly update the web page.

Test things out in the Playground! You should now get two morph boxes, but they will likely be overlapping. Drag one out of the way!

## Takeaways:
Looking at `WebPage`, `Ticker`, and `AlertBox` (specifically in `getReadings` method) we can see that three different patterns of pulling/pushing data are used: 
- The `Ticker` class asks its `WeatherData` parameter for updates
- `AlertBox` gets each kind of data from separate a push from `WeatherData` 
- `WebPage` takes humidity,temperature, and humidity separately as method parameters to update. 

This is bad. Absolutely disgusting! Currently, there is no standard way to implement  an object that updates according to changes in `WeatherData`. Instead, it may be better to utilize the Observer pattern. 


# Phase 3 - Observer Time 

## The Observer Pattern
This pattern designates an object as a subject which keeps a list of all of its dependents, called observers. This is usually implemented by the subject  calling an update() method in each of its observers whenever it changes state. This pattern is often used in event handling. The Angular front-end framework, for example, uses observers extensively. 

## Observing the weather
After hearing of the glory of the Observer Pattern, you must now implement it. 

- Make an `Observer` abstract base class.
  - Add an `update: weatherData` abstract method to `WeatherObserver`
- Change `AlertBox`, `Ticker`, and `WebPage` to be subclasses of `Observer`. 
- In `WeatherData's` instance variables , take away `Ticker`, `WebPage`, and `AlertBox`  and add an `observers` ordered collection. Be sure to initialize it!
  - Add a `registerObserver:` method that adds an observer to the list of `observers`.
  - Add a `notifyObservers` method that sends `update:` to each observer.
- Implement the `update: weatherData` method in `Ticker`, `AlertBox`, `WebPage`. 
  - `Ticker's` `update` method is already implemented!
  - `AlertBox's `  `update` method will also call each of its corresponding `[parameter]Alert` methods. 
  - `WebPage's`  `update` method can either call the existing trinary method, or move the functionality into `update`. 
- Now, in WeatherData, change the `getReadings` method to notify the observers in a properly abstract manner.
- Test your code using this test block. It should work the same as before!

```Smalltalk
	| wd |
	wd := WeatherData new.
	wd registerObserver: Ticker new;
	   registerObserver: AlertBox new;
	   registerObserver: Webpage new.
	wd getReadings.
	wd getReadings.
```

## Takeaways
1. The observer pattern did require that we change the webpage API. This could have been avoided by using a Proxy!
2. We moved the registration of the observers from the initialize method to the test code. This is actually a good thing! We have decoupled the weather data from what kinds of objects can observe its changes.
3. The observer pattern is even more useful when you might have objects polling other objects: i.e. checking their status on a timer to see if it has changed.
4. We chose to use `Ticker`'s style of updating: this is not the only way to set up the `Observer` abstract base class. As long as all three are consistent, you are using observer correctly.
   - Imagine that we could update the weather data's temperature, humidity, and pressure separately. Then we might have prefered `AlertBox`'s style!
