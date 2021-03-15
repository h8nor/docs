# ######################### header ##########################

# Name Script: check-logs-60m
# Comment: script for API if Mikrotik does not work stably
# Policy Script: [X] read, [X] write, [X] test
# Name Schedule: post-messages-to-Discord
# Interval: 00:60:00
# Policy Schedule: [X] read, [X] write, [X] test
# On-Event: /system script run check-logs-60m
# Tested by bopoh13@ya on: RouterOS v6.46.7

# ##################### Script Settings #####################

/system logging action set memory memory-lines=1100;

:local URLWEBHOOK "https://discord.com/api/webhooks/$Discord.Url_Webhook$";
:local DEVICE ( "(" . [/system identity get name] . ") Mikrotik $Model.ZZXXX$" );
:local IDROLEUSER "$Discord.ID_@&Role_or_ID_@User$";

#############################################################

:local dateNow [/system clock get date];
:local mouths { jan="01";feb="02";mar="03";apr="04";may="05";jun="06";jul="07";aug="08";sep="09";oct="10";nov="11";dec="12" };
:local dateLog;
:local timeLog;
:local column1Msg;
:local column2Msg;
:local column3Msg;

:foreach lineLog in=[/log find message~" down" || message~" failure" || message~"loop" || message~"sent" || message~"fcs" || message~"excessive"] do={
  :set timeLog [/log get $lineLog time];
  # Date Record Unification
  :if ( [:len $timeLog] = 15 ) do={
    :set dateLog ( [:pick $timeLog 0 6] . "/" . [:pick $dateNow 7 11] );
    :set timeLog [:pick $timeLog 7 15];
  } else={
    :if ( [:len $timeLog] = 20 ) do={
      :set dateLog [:pick $timeLog 0 11];
      :set timeLog [:pick $timeLog 12 20];
    } else={
      :set dateLog $dateNow;
    }
  }
  :set dateLog ( [:pick $dateLog 7 11] . "-" . ( $mouths -> [:pick $dateLog 0 3] ) . "-" . [:pick $dateLog 4 6] );
  
  # HotFix! Condition is required for debugging
  :if ( [:len [/log get $lineLog message] ] < 70 ) do={
    :set column1Msg ( $column1Msg . "\\n" . $dateLog );
    :set column2Msg ( $column2Msg . "\\n" . $timeLog );
    :set column3Msg ( $column3Msg . "\\n" . [/log get $lineLog message] );
  }
}

:local body "{\"content\": \"<$IDROLEUSER> Attention!\", \
\"username\": \"$DEVICE\", \
\"embeds\": [ {\"color\": 11746099, \"title\": \"\", \"fields\": [ \
  {\"inline\": true, \"name\": \"Date\", \"value\": \"$column1Msg\"}, \
  {\"inline\": true, \"name\": \"Time\", \"value\": \"$column2Msg\"}, \
  {\"inline\": true, \"name\": \"Message\", \"value\": \"$column3Msg\"} \
  ], \"footer\": { \"text\": \"\D0\BE\D1\82\D0\BC\D0\B5\D1\82\D0\BA\D0\B0\" }, \
  \"timestamp\": \"$dateLog\54$( [/system clock get time] - [/system clock get gmt-offset] ).000Z\" \
} ] \
}"

:if ( [:len $column3Msg] > 0 ) do={
  /tool fetch url=$URLWEBHOOK http-method=post duration="3m" \
    http-header-field="Content-Type: application/json; charset=UTF-8" http-data=$body;
} else={
  /log info message="No entries found in the log";
}
