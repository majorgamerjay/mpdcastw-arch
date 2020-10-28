.PHONY : install proc1 proc2 post
install : proc1 proc2 post

proc1:
	printf "#!/bin/bash\nexec `pwd`/mpdcastw-arch" > mpdcast-wizard-arch
	chmod +x mpdcast-wizard-arch

proc2:
	cp mpdcast-wizard-arch /usr/bin
	rm -rf mpdcast-wizard-arch

post:
	printf "Please do not delete any files of this directory\n\
		Run the wizard using \`sudo mpdcast-wizard-arch\` from\n\
		now on."

clean:
	rm -rf mpdcast-wizard-arch

uninstall:
	rm -rf /usr/bin/mpdcast-wizard-arch
