# Tournament

## Synopsis

This is a program that runs tests for a Swiss-system tournament. Using a VM, a database is created with a table for the players and another for the matches played. 
There are functions set up that perform tasks for the tournament like adding and removing players and doing a Swiss-system pairing to decide who plays who in the next round. 
The idea behind the Swiss-system is that every player participates in every round and is paired with someone who has won the same (or a similar) number of matches as them and the winner is 
defined to be the player with the most wins after log2n rounds if the number of players at the start is n. This program assumes an even number of players at the start and no possibility of a tie.  

## Set up

- Install Vagrant and Virtual Box (use https://www.udacity.com/wiki/ud197/install-vagrant to help you)

### Repository Cloning

- clone the repository using command line git: `git clone https://github.com/diosat91/Tournament.git`
- move into vagrant folder `cd vagrant/`
- `vagrant up` to power the machine
- `vagrant ssh` to connect to it

### Database Setup

- create the database and schema using: `psql -f /vagrant/tournament/tournament.sql`

## Running tests module

- once database and schema are correctly created and configured users can execute the tests module to evaluate the API behavior. To run the test you can invoke `python /vagrant/tournament/tournament_test.py` from system's command line. This will call the functions defined in the tournament.py file and return the outcome of the tests or details of any errors.
