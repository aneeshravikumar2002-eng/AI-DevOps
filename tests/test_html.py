
from pathlib import Path


def test_html_exists():
    assert Path("index.html").exists()


def test_html_contains_title():
    content = Path("index.html").read_text()
    assert "<title>AI DevOps Demo</title>" in content


def test_html_contains_heading():
    content = Path("index.html").read_text()
    assert "<h1>AI Self-Healing CI/CD Demo</h1>" in content

