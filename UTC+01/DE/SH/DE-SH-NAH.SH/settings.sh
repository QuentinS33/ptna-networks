#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="DE-SH-NAH.SH"

PTNA_TIMEZONE="Europe/Berlin"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][admin_level=4][name~'Schleswig-Holstein'];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Nahverkehrsverbund Schleswig-Holstein|Sylter Verkehrsgesellschaft"
NETWORK_SHORT="NAH.SH|WDR"

ANALYSIS_PAGE="Schleswig-Holstein/NAH.SH/Analyse"
ANALYSIS_TALK="Talk:Schleswig-Holstein/NAH.SH/Analyse"
WIKI_ROUTES_PAGE="Schleswig-Holstein/NAH.SH/Analyse/DE-SH-NAH.SH-Linien"

ANALYSIS_OPTIONS="--language=de --check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --positive-notes --max-error=10 --check-version --check-access --check-way-type --check-service-type --check-name-relaxed --check-sequence --check-osm-separator --check-motorway-link --check-stop-position --multiple-ref-type-entries=analyze --relaxed-begin-end-for=train,light_rail,tram,bus --coloured-sketchline"

# --expect-network-long
# --check-bus-stop
# --expect-network-short

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Schleswig-Holstein"
PTNA_WWW_REGION_LINK="http://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation%5Bboundary%3Dadministrative%5D%5Badmin_level%3D4%5D%5Bname~%27Schleswig-Holstein%27%5D%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Nahverkehrsverbund Schleswig-Holstein"
PTNA_WWW_NETWORK_LINK="https://www.nah.sh/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Diskussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="NAH.SH Linien"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
