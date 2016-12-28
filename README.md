# Tournament Results

This project is a part of the Full Stack Web Developer Nanodegree through [Udacity](https://www.udacity.com/course/full-stack-web-developer-nanodegree--nd004).

### About
This project is a Python module that uses the PostgreSQL database to keep track of players and matches in a game tournament.

### Requirements

You will need these installed in your computer:
* [Vagrant](https://www.vagrantup.com/)
* [VirtualBox](https://www.virtualbox.org/)

## Running The Project

1. Clone the repository

2. Navigate to the project directory

3. Run following command to setup Vagrant.

        > $vagrant up

4. Run following command to login to your Vagrant VM:

        > $vagrant ssh

5. Run following command to change to the shared folder:

        > $cd /vagrant

6. Run following command to add database schema to PostgreSQL:

        > $psql -f tournament.sql

6. Run following command to run the unit tests:

        > $python tournament_test.py
