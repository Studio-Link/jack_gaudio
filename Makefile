default: jack_gaudio_out

jack_gaudio_out: alsa.c jack_out.c
	$(CC) $(CFLAGS) jack2/memops.c alsa.c jack_out.c -o jack_gaudio_out -l jack -l asound -l pthread -lm -I jack2 -I jack2/jack

install: jack_gaudio_out
	install -Dm 755 "jack_gaudio_out" "$(DESTDIR)/usr/bin/jack_gaudio_out"

clean:
	rm -f jack_gaudio_out

.PHONY: install
