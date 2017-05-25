#for var in `ls -1 *.flac`
for var in *.flac
do
	ffmpeg -i "$var" -ac 2 -ar 44100 -acodec alac "${var%%.flac}.m4a"
done

