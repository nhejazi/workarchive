DIRS = posters present publications
TARGET = nhejazi@arwen.berkeley.edu:/mirror/data/pub/users/nhejazi

.PHONY : get

get :
	for DIR in $(DIRS); do rsync -auvP $(TARGET)/$$DIR .; done

put :
	rsync -r --chmod=go+r $(DIRS) $(TARGET)
