#!/bin/bash
text="Dobry:den:nevim:co:tu:mam:napsat"
echo $text
echo $text | awk -F ":" '{print $2}'
echo $text | awk -F ":" '{print $6}'

