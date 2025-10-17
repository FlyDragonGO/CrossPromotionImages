#!/usr/bin/env bash
#app=solitairemakeover
#app=makeovermatch
#app=cooking_frenzy
app=hotelfrenzy
url=https://res.dragonplus.net/cross_promotion/$app.png
curl $url -o /tmp/$app.png
open /tmp/$app.png
echo $url
