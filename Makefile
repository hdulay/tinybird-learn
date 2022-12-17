

osq:
	sudo osqueryd \
		--extension tinybird.ext \
		--logger_plugin=tb_logger  \
		--config_plugin=osquery_config \
		--allow_unsafe \
		--disable_events=false

gen:
	rm -rf tmp
	openapi-generator generate \
		-i https://api.us-east.tinybird.co/v0/pipes/openapi.json?token=p.eyJ1IjogIjdlMmJhNmEwLTJjMzMtNDQ1MC1hOGJmLTAyNWQwMjlhZDc2MCIsICJpZCI6ICI0ZmVmY2JkZi1iZjRhLTRmY2EtOTYyYy0zMjJkMmRmOTY2ZTQifQ.2vwsGc1l0JyCRKsN_g3Pkh8BnskDKaa8n_pzNCcWPEA  \
		-g python-flask  \
		-o ./tmp/test/ \
		--skip-validate-spec \
		--enable-post-process-file

notebook:
	jupyter notebook
	