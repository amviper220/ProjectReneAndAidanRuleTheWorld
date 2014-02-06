#!/usr/bin/ruby

Dir.mkdir("buildXmls")

Dir.chdir("./buildXmls")
$limit = 1046  #this needs to be a param read from a file or find out someway to get the last build number....possibly time?
$buildnumber = 1043
while $buildnumber < $limit
	greeting = "grabbing infra build #$buildnumber"
	puts greeting
	url =  "http://ci-gsix.isg.deere.com/job/gsx-dev-infra-default/#$buildnumber/testReport/api/xml"
	`wget #{url}` 
	$buildnumber +=1
end 

exit 0
#comment