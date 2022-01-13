#!/bin/bash
cd ~

rm -rf go3-heroku

git clone https://github.com/daewf422/go3/go3-heroku.git

cd go3-heroku

rm -rf .git

git init .

heroku create

chmod +x bootstrap proxy release.sh

./release.sh
