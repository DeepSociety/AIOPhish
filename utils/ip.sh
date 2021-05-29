dates_ip(){
        if [[ -f infoip ]];then
                rm infoip
        fi

        ipfind=$(curl -s -L "http://ip-api.com/json/$ip" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31" > infoip)
        query=$(grep -o '"query":.*' infoip | cut -d '"' -f4)

        if [[ $query == "" ]]; then
                echo -e "$v[*] Hostname:$b Unknown"
        else
                echo -e "$v[*] Hostname:$b" $query
        fi

        country=$(grep -o '"country":.*' infoip | cut -d '"' -f4)

        if [[ $country == "" ]]; then
                echo -e "$v[*] Country:$b Unknown"
        else
                echo -e "$v[*] Country:$b" $country
        fi

        cc=$(grep -o '"countryCode":.*' infoip | cut -d '"' -f4)

        if [[ $cc == "" ]];then
                echo -e "$v[*] Country Code:$b Unknown"
        else
                echo -e "$v[*] Country Code:$b" $cc
        fi


        rn=$(grep -o '"regionName":.*' infoip | cut -d '"' -f4)
        
        if [[ $rn == "" ]];then
                echo -e "$v[*] Region:$b Unknown"
        else
                echo -e "$v[*] Region:$b" $rn
        fi

        city=$(grep -o '"city":.*' infoip | cut -d '"' -f4)
        
        if [[ $city == "" ]];then
                echo -e "$v[*] City:b Unknown"
        else
                echo -e "$v[*] City:$b" $city
        fi

        zip=$(grep -o '"zip":.*' infoip | cut -d '"' -f4)
        
        if [[ $zip == "" ]];then
                echo -e "$v[*] zip:$b Unknown"
        else
                echo -e "$v[*] zip:$b" $zip
        fi

        tz=$(grep -o '"timezone":.*' infoip | cut -d '"' -f4)
        
        if [[ $tz == "" ]];then
                echo -e "$v[*] Time Zone:$b Unknown"
        else
                echo -e "$v[*] Time Zone:$b" $tz
        fi

        isp=$(grep -o '"isp".*' infoip | cut -d '"' -f4)
        
        if [[ $isp == "" ]];then
                echo -e "$v[*] ISP:$b Unknown"
        else
                echo -e "$v[*] ISP:$b" $isp
        fi

        org=$(grep -o '"org":.*' infoip | cut -d '"' -f4)
        
        if [[ $org == "" ]];then
                echo -e "$v[*] org:$b Unknown"
        else
                echo -e "$v[*] org:$b" $org
        fi

        as=$(grep -o '"as":.*' infoip | cut -d '"' -f4)
        
        if [[ $as == "" ]];then
                echo -e "$v[*] AS:$b Unknown"
        else
                echo -e "$v[*] AS:$b" $as
        fi

        lan=$(grep -o '"lat":.*' infoip | cut -d '"' -f3 | cut -d ':' -f2 | cut -d ',' -f1)
        lon=$(grep -o '"lon":.*' infoip | cut -d '"' -f3 | cut -d ':' -f2 | cut -d ',' -f1)

        if [[ $lan == "" || $lon == "" ]];then
                echo -e "$v[*] Google Maps:$b Unknown"
        else
                link_maps="https://www.google.com/maps/place/$lan,$lon"
                echo -e "$v[*] Google Maps:$b" $link_maps

                rm infoip
        fi
}