#!/usr/bin/env python3
import yaml
import sys

try:
    with open('_config.yml', 'r', encoding='utf-8') as f:
        config = yaml.safe_load(f)
    print("✅ YAML syntax is valid")
    print(f"✅ Loaded {len(config)} configuration sections")
except yaml.YAMLError as e:
    print(f"❌ YAML Error: {e}")
    print(f"   Line {e.problem_mark.line + 1}, Column {e.problem_mark.column + 1}")
    sys.exit(1)
except FileNotFoundError:
    print("❌ _config.yml file not found")
    sys.exit(1)