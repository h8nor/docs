# ######################### header ##########################

# Name Script: refresh-external-IP
# Comment: script check your public ip and return in a global variable
# Policy Script: [X] ftp, [X] read, [X] write, [X] test
# Tested by bopoh13@ya on: RouterOS v6.40.2

# ##################### Script Settings #####################

/ip cloud set ddns-enabled=yes; :delay 2s;

:global publicIP [/ip cloud get public-address];

#############################################################

:if ( [:typeof $publicIP] != "ip" ) do={
  :delay 10s; :set publicIP [/ip cloud get public-address];
}

/log info message="$publicIP";
/ip cloud set ddns-enabled=no;
