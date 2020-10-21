#!/usr/bin/bash
# Only keep useful columns
# body_type	daysonmarket engine_type fleet frame_damaged franchise_dealer fuel_type has_accidents horsepower isCab is_new make_name transmission wheel_system year
awk -F"," '{print $6",",$11",",$16",",$18",",$19",",$20",",$24",",$25",",$28",",$30",",$33",",$43",",$49",",$57",",$62",",$66}' used_cars_data.csv  > dataset.csv
# Remove duplicate rows
awk '!a[$0]++' dataset.csv
# Remove empty rows
sed '/\S/!d' dataset.csv