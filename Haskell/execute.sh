#!/bin/bash
ghc -o example src/Example.hs -odir ./ -hidir ./ && ./example