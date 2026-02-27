.PHONY: default clean

default: .venv
	.venv/bin/gftools builder sources/config.yaml

.venv:
	python3 -m venv .venv --prompt="czarin"
	.venv/bin/pip3 install --upgrade --requirement requirements.txt

clean:
	rm -rf .venv
