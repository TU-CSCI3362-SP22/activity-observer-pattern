# Observer Activity

This activity is designed to be completed in groups of 1-3. Phase 1 involves familiarizing yourself with the existing code base and add features. In Phase 2 we will cover the observer pattern in the abstract. In Phase 3 you will implement the observer pattern.

## Phase 1 - Implement WeatherData Methods to call AlertBox  
    1) In the WeatherData class write setTemperature, setPressure, and setHumidity
       - This will create a random number and call the correspoding alert method in the AlertBox. 
       - Temp is between 70 and 110, Pressure is between 70 110, Humidity is between 70 and 100. 
    2) When you're done with this, look at how Ticker and WebPage both interact with the WeatherData class. 

## Phase 2 - What is the Observer Pattern  
    Looking at WebPage, Ticker, and AlertBox, we can see that three different patterns of pulling/pushing data are used. 
    The Ticker class asks it's WeatherData instance variable for updates, AlertBox gets the data from a push from WeatherData, 
    and WebPage takes WeatherData as a method parameter to update. This is bad. Currently, there is no standard way to implement 
    an object that updates according to changes in WeatherData. Instead, it may be better to utilize the Observer pattern. This 
    pattern designates an object as a subject which keeps a list of all of it's dependents, called observers. This is usually 
    implemented by the subject  calling an update() method in each of it's oberservers whenever it changes state.This pattern is
    often used in event handling. The Angular front-end framework, for example, uses observers extensively. 
## Phase 3 - Implement the Observer Pattern


