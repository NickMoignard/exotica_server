#!/bin/bash


cd ~/code/aws/exotica_server;
rails db:seed;
rails s;
