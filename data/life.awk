#!/bin/awk -f
BEGIN {OFS = "\t";}

FILENAME == "ppp.txt"{
    if (NF == 4) {
        country = $2;
        ppp = $4;
    } else {
        country = "";
        ppp = $NF;
        for (i=2; i<NF-1; i++)
            country = (country $i " ");
    }
    gsub(" ", "", country);
    cap[country] = ppp;
}

FILENAME == "life.txt"{
    if (NF == 3) {
        country = $2;
        area = $3;
    } else {
        country = "";
        area = $NF;
        for (i=2; i<NF; i++)
            country = (country $i " ");
    }
    copy = country
    gsub(" ", "", copy);
    if (cap[copy] != "")
        print country, cap[copy], area;
}


