#!/bin/bash

sudo update-alternatives --install "/usr/bin/jar" "jar"  "/usr/local/lib/jvm/jdk1.8.0_77/bin/jar" 1

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/lib/jvm/jdk1.8.0_77/bin/java" 1 

sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/lib/jvm/jdk1.8.0_77/bin/javac" 1 

sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/lib/jvm/jdk1.8.0_77/bin/javaws" 1 

sudo update-alternatives --install "/usr/bin/javap" "javap" "/usr/local/lib/jvm/jdk1.8.0_77/bin/javap" 1 

sudo update-alternatives --install "/usr/bin/javah" "javah" "/usr/local/lib/jvm/jdk1.8.0_77/bin/javah" 1 

sudo update-alternatives --config javac 

sudo update-alternatives --config java 

sudo update-alternatives --config javap 

sudo update-alternatives --config javah 

