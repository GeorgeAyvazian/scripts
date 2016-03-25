#!/bin/bash
arg=("$@")
sed -i -e "1,29s/^d/#d/" "~/ecourt/cmsuser.properties"
case "${arg[0]}" in
	master) sed -i -e "5s/^#//" "~/ecourt/cmsuser.properties"
		;;
	5.3) sed -i -e "7s/^#//" "~/ecourt/cmsuser.properties"
		;;
	temp) sed -i -e "8s/^#//" "~/ecourt/cmsuser.properties"
		;;
	tulare-unstable) sed -i -e "10s/^#//" "~/ecourt/cmsuser.properties"
		;;
	tulare-qa) sed -i -e "11s/^#//" "~/ecourt/cmsuser.properties"
		;;
	gilbert-unstable) sed -i -e "13s/^#//" "~/ecourt/cmsuser.properties"
		;;
	sonoma-unstable) sed -i -e "18s/^#//" "~/ecourt/cmsuser.properties"
		;;
	sonoma-config) sed -i -e "20s/^#//" "~/ecourt/cmsuser.properties"
		;;
	sonoma-unstable2) sed -i -e "19s/^#//" "~/ecourt/cmsuser.properties"
		;;
	tulare-dev) sed -i -e "22s/^#//" "~/ecourt/cmsuser.properties"
		;;
	gwinnett-dev) sed -i -e "24s/^#//" "~/ecourt/cmsuser.properties"
		;;
	sask) sed -i -e "6s/^#//" "~/ecourt/cmsuser.properties"
		;;
esac
