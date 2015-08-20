#!/bin/bash
#########################################################################
# File Name: download.sh
# Author: LookBack
# Email: admin#dwhd.org
# Version:
# Created Time: Sun 09 Aug 2015 01:46:12 AM CST
#########################################################################

JDK_JRE_ServerJRE=("jdk" "jre" "server-jre")
for jdkjre in ${JDK_JRE_ServerJRE[@]};do
	BASE_URL_8[0]=http://download.oracle.com/otn-pub/java/jdk/8u5-b13/$jdkjre-8u5
	BASE_URL_8[1]=http://download.oracle.com/otn-pub/java/jdk/8u45-b14/$jdkjre-8u45
	BASE_URL_8[2]=http://download.oracle.com/otn-pub/java/jdk/8u40-b25/$jdkjre-8u40
	BASE_URL_8[3]=http://download.oracle.com/otn-pub/java/jdk/8u31-b13/$jdkjre-8u31
	BASE_URL_8[4]=http://download.oracle.com/otn-pub/java/jdk/8u25-b17/$jdkjre-8u25
	BASE_URL_8[5]=http://download.oracle.com/otn-pub/java/jdk/8u20-b26/$jdkjre-8u20
	BASE_URL_8[6]=http://download.oracle.com/otn-pub/java/jdk/8u11-b12/$jdkjre-8u11
	BASE_URL_8[7]=http://download.oracle.com/otn-pub/java/jdk/8u51-b16/$jdkjre-8u51
	for i in ${BASE_URL_8[@]}; do
		BASE_URL_8=$i
		[ "$BASE_URL_8" = "http://download.oracle.com/otn-pub/java/jdk/8u5-b13/$jdkjre-8u5" ] || JDK_VERSION=${BASE_URL_8: -8} && JDK_VERSION=${BASE_URL_8: -7}
		PLATFORMS=("-linux-i586.rpm" "-linux-i586.tar.gz" "-linux-x64.rpm" "-linux-x64.tar.gz" "-macosx-x64.dmg" "-macosx-x64.tar.gz" "-solaris-sparcv9.tar.gz" "-solaris-x64.tar.gz" "-windows-i586-iftw.exe" "-windows-i586.exe" "-windows-i586.tar.gz" "-windows-x64.exe" "-windows-x64.tar.gz")

		for platform in "${PLATFORMS[@]}"; do
			wget -c -O "/home/wwwroot/mirrors.dwhd.org/JDK/jdk8/$JDK_VERSION$platform" --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "${BASE_URL_8}${platform}"
			### curl -L -O -H "Cookie: oraclelicense=accept-securebackup-cookie" -k "${BASE_URL_8}${platform}"
		done
	done
done


JDK_JRE_ServerJRE=("jdk" "jre" "server-jre")
for jdkjre in ${JDK_JRE_ServerJRE[@]};do
	BASE_URL_7[0]=http://download.oracle.com/otn-pub/java/jdk/7u80-b15/$jdkjre-7u80
	BASE_URL_7[1]=http://download.oracle.com/otn-pub/java/jdk/7u79-b15/$jdkjre-7u79
	BASE_URL_7[2]=http://download.oracle.com/otn-pub/java/jdk/7u76-b13/$jdkjre-7u76
	BASE_URL_7[3]=http://download.oracle.com/otn-pub/java/jdk/7u75-b13/$jdkjre-7u75
	BASE_URL_7[4]=http://download.oracle.com/otn-pub/java/jdk/7u72-b14/$jdkjre-7u72
	BASE_URL_7[5]=http://download.oracle.com/otn-pub/java/jdk/7u71-b14/$jdkjre-7u71
	BASE_URL_7[6]=http://download.oracle.com/otn-pub/java/jdk/7u67-b01/$jdkjre-7u67
	BASE_URL_7[7]=http://download.oracle.com/otn-pub/java/jdk/7u65-b17/$jdkjre-7u65
	BASE_URL_7[8]=http://download.oracle.com/otn-pub/java/jdk/7u60-b19/$jdkjre-7u60
	BASE_URL_7[9]=http://download.oracle.com/otn-pub/java/jdk/7u55-b13/$jdkjre-7u55
	BASE_URL_7[10]=http://download.oracle.com/otn-pub/java/jdk/7u51-b13/$jdkjre-7u51
	BASE_URL_7[11]=http://download.oracle.com/otn-pub/java/jdk/7u45-b18/$jdkjre-7u45
	BASE_URL_7[12]=http://download.oracle.com/otn-pub/java/jdk/7u40-b43/$jdkjre-7u40
	BASE_URL_7[13]=http://download.oracle.com/otn-pub/java/jdk/7u25-b15/$jdkjre-7u25
	BASE_URL_7[14]=http://download.oracle.com/otn-pub/java/jdk/7u21-b11/$jdkjre-7u21
	BASE_URL_7[15]=http://download.oracle.com/otn-pub/java/jdk/7u17-b02/$jdkjre-7u17
	BASE_URL_7[16]=http://download.oracle.com/otn-pub/java/jdk/7u15-b03/$jdkjre-7u15
	BASE_URL_7[17]=http://download.oracle.com/otn-pub/java/jdk/7u13-b20/$jdkjre-7u13
	BASE_URL_7[18]=http://download.oracle.com/otn-pub/java/jdk/7u11-b21/$jdkjre-7u11
	BASE_URL_7[19]=http://download.oracle.com/otn-pub/java/jdk/7u10-b18/$jdkjre-7u10
	BASE_URL_7[20]=http://download.oracle.com/otn-pub/java/jdk/7u9-b05/$jdkjre-7u9
	BASE_URL_7[21]=http://download.oracle.com/otn-pub/java/jdk/7u7-b10/$jdkjre-7u7
	BASE_URL_7[22]=http://download.oracle.com/otn-pub/java/jdk/7u6-b24/$jdkjre-7u6
	BASE_URL_7[23]=http://download.oracle.com/otn-pub/java/jdk/7u5-b06/$jdkjre-7u5
	BASE_URL_7[24]=http://download.oracle.com/otn-pub/java/jdk/7u4-b20/$jdkjre-7u4
	BASE_URL_7[25]=http://download.oracle.com/otn-pub/java/jdk/7u3-b04/$jdkjre-7u3
	BASE_URL_7[26]=http://download.oracle.com/otn-pub/java/jdk/7u2-b13/$jdkjre-7u2
	BASE_URL_7[27]=http://download.oracle.com/otn-pub/java/jdk/7u1-b08/$jdkjre-7u1
	for i in ${BASE_URL_7[@]}; do
		BASE_URL_7=$i
		JDK_VERSION=${BASE_URL_7: -8}
		PLATFORMS=("-linux-i586.rpm" "-linux-i586.tar.gz" "-linux-x64.rpm" "-linux-x64.tar.gz" "-macosx-x64.dmg" "-macosx-x64.tar.gz" "-solaris-sparcv9.tar.gz" "-solaris-x64.tar.gz" "-windows-i586-iftw.exe" "-windows-i586.exe" "-windows-i586.tar.gz" "-windows-x64.exe" "-windows-x64.tar.gz" "-docs-all.zip")

		for platform in "${PLATFORMS[@]}"; do
			wget -c -O "/home/wwwroot/mirrors.dwhd.org/JDK/jdk7/$JDK_VERSION$platform" --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "${BASE_URL_7}${platform}"
			### curl -L -O -H "Cookie: oraclelicense=accept-securebackup-cookie" -k "${BASE_URL_7}${platform}"
		done
	done
done

#mkdir -p {7u80,7u79,7u76,7u75,7u72,7u71,7u67,7u65,7u60,7u55,7u51,7u45,7u40,7u25,7u21,7u17,7u15,7u13,7u11,7u10,7u09,7u07,7u06,7u05,7u04,7u03,7u02,7u01}


JDK_JRE_ServerJRE=("jdk" "jre" "server-jre")
for jdkjre in ${JDK_JRE_ServerJRE[@]};do
	BASE_URL_6[0]=http://download.oracle.com/otn-pub/java/jdk/6u45-b06/$jdkjre-8u5
	BASE_URL_6[1]=http://download.oracle.com/otn-pub/java/jdk/6u43-b01/$jdkjre-8u45
	BASE_URL_6[2]=http://download.oracle.com/otn-pub/java/jdk/8u40-b25/$jdkjre-8u40
	BASE_URL_6[3]=http://download.oracle.com/otn-pub/java/jdk/8u31-b13/$jdkjre-8u31
	BASE_URL_6[4]=http://download.oracle.com/otn-pub/java/jdk/8u25-b17/$jdkjre-8u25
	BASE_URL_6[5]=http://download.oracle.com/otn-pub/java/jdk/8u20-b26/$jdkjre-8u20
	BASE_URL_6[6]=http://download.oracle.com/otn-pub/java/jdk/8u11-b12/$jdkjre-8u11
	BASE_URL_6[7]=http://download.oracle.com/otn-pub/java/jdk/8u51-b16/$jdkjre-8u51
	for i in ${BASE_URL_6[@]}; do
		BASE_URL_6=$i
		JDK_VERSION=${BASE_URL_6: -7}
		PLATFORMS=("-linux-i586.rpm" "-linux-i586.tar.gz" "-linux-x64.rpm" "-linux-x64.tar.gz" "-macosx-x64.dmg" "-macosx-x64.tar.gz" "-solaris-sparcv9.tar.gz" "-solaris-x64.tar.gz" "-windows-i586-iftw.exe" "-windows-i586.exe" "-windows-i586.tar.gz" "-windows-x64.exe" "-windows-x64.tar.gz")

		for platform in "${PLATFORMS[@]}"; do
			wget -c -O "/home/wwwroot/mirrors.dwhd.org/JDK/jdk8/$JDK_VERSION$platform" --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "${BASE_URL_6}${platform}"
			### curl -L -O -H "Cookie: oraclelicense=accept-securebackup-cookie" -k "${BASE_URL_6}${platform}"
		done
	done
done

http://download.oracle.com/otn/java/jdk/6u45-b06/jdk-6u45-linux-i586-rpm.bin
http://download.oracle.com/otn/java/jdk/6u43-b01/jdk-6u43-linux-i586-rpm.bin
	
	
	
	
	
	
	
	
	
	
	
	
	