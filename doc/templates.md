# Template Files

**Location:** `templates/`

Script templates for quick project initialization.

## Available Templates

```
templates/
├── bash.tpl       # Bash script template
└── python.tpl     # Python script template
```

## Bash Template

**File:** `templates/bash.tpl`

### Contents

```bash
#!/usr/bin/env bash

# Strict mode
set -euo pipefail
IFS=$'\n\t'

# Script name : brief description
# Author: Mathieu Rousseau - mathieu@2027a.net
# Version: 0.1.0
# License: MIT
```

### Features

- Shebang for portability
- Strict mode enabled:
  - `set -e`: Exit on error
  - `set -u`: Exit on undefined variable
  - `set -o pipefail`: Catch errors in pipes
- Safe IFS (Internal Field Separator)
- Header with metadata

### Usage

```bash
# Copy template
cp ~/dotfiles/templates/bash.tpl script.sh

# Edit script
nvim script.sh

# Make executable
chmod +x script.sh

# Run
./script.sh
```

### Strict Mode Explanation

**`set -e`**: Exit immediately if any command returns non-zero status.

**`set -u`**: Treat unset variables as errors.

**`set -o pipefail`**: Return exit status of last failed command in pipe.

**`IFS=$'\n\t'`**: Set field separator to newline and tab only (not space). Prevents word splitting issues.

### Best Practices

- Keep strict mode unless specific reason to disable
- Add usage/help function
- Use `"${variable}"` (quoted) for variables
- Use `[[ ]]` for conditionals
- Validate inputs
- Use `trap` for cleanup

Example expansion:

```bash
#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

# Script name: example.sh - Does something useful
# Author: Mathieu Rousseau - mathieu@2027a.net
# Version: 0.1.0
# License: MIT

usage() {
    cat <<EOF
Usage: $(basename "$0") [OPTIONS] <arg>

Description of what the script does.

OPTIONS:
    -h, --help      Show this help message
    -v, --verbose   Enable verbose output
EOF
}

main() {
    local arg="${1:-}"
    
    if [[ -z "$arg" ]]; then
        usage
        exit 1
    fi
    
    # Script logic here
    echo "Processing: $arg"
}

# Parse arguments
while [[ $# -gt 0 ]]; do
    case "$1" in
        -h|--help)
            usage
            exit 0
            ;;
        -v|--verbose)
            set -x
            shift
            ;;
        *)
            main "$@"
            exit 0
            ;;
    esac
done
```

## Python Template

**File:** `templates/python.tpl`

### Contents

```python
#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
One-line description of the script's purpose.

Longer description explaining what the script does, how it works,
and any important details or assumptions.

Version: 0.1.0
Licence: MIT
"""


def main():
    """Main function to parse arguments and execute script logic."""
    print("Hello World!")


if __name__ == "__main__":
    main()
```

### Features

- Python 3 shebang
- UTF-8 encoding declaration
- Docstring with description
- Version and license info
- Main function pattern
- `if __name__ == "__main__"` guard

### Usage

```bash
# Copy template
cp ~/dotfiles/templates/python.tpl script.py

# Edit script
nvim script.py

# Make executable
chmod +x script.py

# Run
./script.py
# or
python3 script.py
```

### Best Practices

- Use type hints (Python 3.5+)
- Add argparse for CLI arguments
- Use logging instead of print for production
- Follow PEP 8 style guide
- Add docstrings to functions

Example expansion:

```python
#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
example.py - Does something useful

Longer description of functionality.

Version: 0.1.0
Licence: MIT
"""

import argparse
import logging
from pathlib import Path


def setup_logging(verbose: bool = False) -> None:
    """Configure logging."""
    level = logging.DEBUG if verbose else logging.INFO
    logging.basicConfig(
        level=level,
        format='%(asctime)s - %(levelname)s - %(message)s'
    )


def process_file(filepath: Path) -> None:
    """
    Process a file.
    
    Args:
        filepath: Path to file to process
    """
    logging.info(f"Processing: {filepath}")
    # Processing logic here


def main() -> None:
    """Main function to parse arguments and execute script logic."""
    parser = argparse.ArgumentParser(
        description="Description of what the script does"
    )
    parser.add_argument(
        'file',
        type=Path,
        help='File to process'
    )
    parser.add_argument(
        '-v', '--verbose',
        action='store_true',
        help='Enable verbose output'
    )
    
    args = parser.parse_args()
    setup_logging(args.verbose)
    
    if not args.file.exists():
        logging.error(f"File not found: {args.file}")
        return 1
    
    process_file(args.file)
    return 0


if __name__ == "__main__":
    exit(main())
```

## Creating New Templates

Add new templates to `templates/` directory:

```bash
# Create template
nvim ~/dotfiles/templates/rust.tpl

# Use template
cp ~/dotfiles/templates/rust.tpl main.rs
```

Consider templates for:
- Go programs
- Rust programs
- Makefiles
- Docker files
- systemd units
- LaTeX documents

## Integration with Editor

Configure nvim to use templates automatically:

```lua
-- In nvim config
vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.sh",
  command = "0r ~/dotfiles/templates/bash.tpl"
})

vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.py",
  command = "0r ~/dotfiles/templates/python.tpl"
})
```

This auto-loads template when creating new files.
