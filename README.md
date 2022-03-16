# Observer Activity

This activity is designed to be completed in groups of 1-3. Phase 1 involves familiarizing yourself with the existing code base and add features. In Phase 2 we will cover the observer pattern in the abstract. In Phase 3 you will implement the observer pattern.

## Phase 1 - Implement AlertBox Methods 
    1) In the AlertBox class, create methods tempAlert, humidityAlert, pressureAlert
       - Each method sets it's given variable (tempAlert sets the AlertBox's instance variable temperarute..etc) 
       - Each method sets a threshold for the alert
       - Each method prints an alert to transcript if the threshold is met 
    2) Change setTemperature, setHumidity, setPressure to call corresponding AlertBox method (setTemp calls tempAlert...etc) 
        -Note: Ignore the fact that each of these methods create a random number, 
        this is just for the sake of getting different data each time. 

## Phase 2 - What is the Observer Pattern  
    Looking at WebPage, Ticker, and AlertBox, we can see that three different patterns of pulling/pushing data are used. 
    The Ticker class asks it's WeatherData instance variable for updates, AlertBox gets the data from a push from WeatherData, 
    and WebPage takes WeatherData as a method parameter to update. This is bad. Currently, there is no standard way to implement 
    an object that updates according to changes in WeatherData. Instead, it may be better to utilize the Observer pattern. This 
    pattern designates an object as a subject which keeps a list of all of it's dependents, called observers. This is usually 
    implemented by the subject  calling an update() method in each of it's oberservers whenever it changes state.This pattern is
    often used in event handling. The Angular front-end framework, for example, uses observers extensively. 
## Phase 3 - Implement the Observer Pattern


