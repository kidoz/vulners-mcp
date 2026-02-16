lint:
	uv run ruff format --check vulners_mcp
	uv run ruff check --select I vulners_mcp

format:
	uv run ruff format vulners_mcp
	uv run ruff check --select I --fix vulners_mcp

typecheck:
	uv run mypy vulners_mcp

venv:
	uv venv --python 3.14

install: venv
	uv sync --group dev
