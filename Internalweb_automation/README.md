# Robot Framework

## Install homebrew
```sh
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Install Python
```sh
brew install python
```
### Check Python Version
```sh
python --version
```

## Install pip
```sh
sudo easy_install pip
```
Install this via terminal if problems found during pip installation
`curl https://bootstrap.pypa.io/get-pip.py | python`
### Check pip Version
```sh
pip --version
```

## Install Robot Framework
```sh
pip install robotframework
```

## Install Robot Framework Library
```sh
pip install robotframework-seleniumlibrary
```
Documentation for SeleniumLibrary
> http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html

## Install chromedriver
```sh
brew install chromedriver
```

## Install geckodriver
```sh
brew install geckodriver
```

## Install robotframework faker
```sh
pip install robotframework-faker
```
Documentation:
>https://guykisel.github.io/robotframework-faker/

# Database Library
Can be installed via terminal:
```sh
pip install -U robotframework-databaselibrary
```
Documentation:
> https://franz-see.github.io/Robotframework-Database-Library/api/0.5/DatabaseLibrary.html

## Install Database Interface for PostgreSQL
```sh
pip install psycopg2
pip install psycopg2-binary
```
### Tutorial on How using it for PostgreSQL:
> https://github.com/franz-see/Robotframework-Database-Library/blob/master/test/PostgreSQL_DB_Tests.robot

## Run Robot
> Run Specific Robot File
```sh
robot -d Results --report index.html /path/path/file.robot
```
> Run Robot Specific Tags
```sh
robot -d Results --report index.html --include tagName /path/path/folder/
```
> Run Specific Test Case from a Test Suite
```sh
robot -d Results --report index.html -t "test case name here" /path/path/file.robot
```
> Run Robot Specific Tags and Define Variable
```sh
robot -d Results --report index.html --include staging --variable environment:staging --variable browser:headlessfirefox /path/path/folder/
```
> Possible values
```sh
Tag: staging OR prod
environment: staging OR prod
browser: chrome OR headlesschrome OR firefox OR headlessfirefox
```