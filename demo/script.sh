#!/bin/bash

# data from:
# https://www.cia.gov/library/publications/the-world-factbook/rankorder/rankorderguide.html


# download data
wget https://www.cia.gov/library/publications/the-world-factbook/rankorder/rawdata_2004.txt
wget https://www.cia.gov/library/publications/the-world-factbook/rankorder/rawdata_2102.txt


#convert from windows newline to unix newline

sed -i 's/\r/\n/g' rawdata_*


