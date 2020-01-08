#!/bin/bash

rm -rf out
mkdir out
./doStuff $@ && mod_post
