export IP_ADDRESS=`ip addr | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' | tail -1`

.PHONY: serve
serve:
	hugo server -D --bind $(IP_ADDRESS) --baseURL http://$(IP_ADDRESS)/ --disableFastRender
