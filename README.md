# Ticket-Tide
The project is a web-based ticketing system that allows users to buy tickets for various events. The system will have two main models: Event and User. An Event model represents a particular event, and a User model represents a user who can buy tickets to attend the events. Each Event will have many Users who have purchased tickets, and each User can buy tickets to multiple Events.

## Description

The ```Event``` model will have the following attributes:

* ```name```: A string representing the name of the event.
* ```date```: A datetime object representing the start time of the event.
* ```location```: A string representing the location of the event.
* ```price```: A decimal representing the price of the event.

The ```User``` model will have the following attributes:

* ```name```: A string representing the name of the user.
* ```email```: A string representing the email address of the user.
* ```password```: A string representing the password of the user.

To represent the relationship between the Event and User models, we will create a Ticket model, which will represent a ticket that a user has purchased for an event. The Ticket model will have the following attributes:

* ```user_id```: A foreign key referencing the User model.
* ```event_id```: A foreign key referencing the Event model.
* ```quantity```: An integer representing the number of tickets purchased.

## ERD
### WIP
```
    +---------------+     +-------------+      +-------------+
    |     Event     |     |    Ticket   |      |     User    |
    +---------------+     +-------------+      +-------------+
    |  id           |     |  id         |      |  id         |
    |  id           |     |  id         |      |  id         |
    |  id           |     |  id         |      |  id         |
    |  id           |     |  id         |      |  id         |
    |  id           |     |  id         |      |  id         |  
    +---------------+     +-------------+      +-------------+
```