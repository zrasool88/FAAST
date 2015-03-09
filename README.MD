**Week 1: Challenge @ Makers Academy**

# Introduction to Object Oriented Programming and Ruby

The weekend challenge at Makers Academy is an exercise meant to test the understanding of the material taught during the week. In this week, we will take what we learnt from Boris Bikes and design a system for trains.

## The Project

FAAST:

### Classes
* **Coach**: Has a capacity of 40 passengers, allows passengers to board, allows passengers to alight, keeps a count of passengers onboard, and knows when it's full.
* **Passenger**: Has a top-up balance in order to travel on trains; initial balance is zero. Can top-up balance in order to travel. Can board a coach and alight from a coach.
* **Station**: Lets a passenger touch in, lets the passenger touch out, regulates train arrival and departure, knows how many trains are at the station.
* **Train**: Arrives at station, departs from station, finite number of coaches, knows when its coaches are full.

## What was tested
* CRC (Class-Responsibility-Collaboration) Card
* Ruby syntax
* Testing using Rspec
* Mocking using doubles in Rspec
* Refactoring Code
* DRY Principle

## Technologies Used
* Ruby 2.1.2
* Rspec
* IRB

## How to Use

1. Clone the repository
2. Change into the directory
3. Run IRB
4. Load runner.rb file
5. Take a train somewhere!
