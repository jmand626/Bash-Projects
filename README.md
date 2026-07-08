# Bash Projects

A small archive of Bash and command-line exercises from CSE 391. This repository is not a single application; it is a collection of practice scripts that capture solutions to different shell tasks. Read together, the files form a mini-tour through the Unix command line: navigating files, combining commands with pipes, processing text, using regular expressions, editing with `sed`, inspecting Git history, and working with permissions.

The scripts are organized as `problemN` functions because they were originally written for homework-style autograded tasks. Each function is meant to demonstrate one shell idea in isolation rather than act as a polished standalone program.

## What this repo teaches

This repo works best as a study guide for the early command-line skills that show up constantly in software engineering:

- **Filesystem basics:** `cp`, `mv`, `rm`, `touch`, `ls`, `head`, and basic glob patterns.
- **Pipes and redirection:** chaining tools together, combining CSV files, counting results, and writing output to a file.
- **Text processing:** `cat`, `cut`, `grep`, `sort`, `uniq`, `wc`, `diff`, and `head`.
- **Regular expressions:** matching names, emails, passwords, credit-card-like strings, and DNA-style sequences.
- **Batch operations:** using `find` and `xargs` to apply commands across many files.
- **Git inspection:** reading logs, comparing commits, and using `git blame`.
- **Stream editing:** using `sed` to rewrite source files, extract fields, and transform text.
- **Permissions and archives:** using `chmod`, `chgrp`, `umask`, `sudo`, and `tar`.

## Repository map

| File | Main focus | What is going on |
| --- | --- | --- |
| `task4.sh` | Shell fundamentals | Early command-line drills: copy/move/remove files, list directories, use globs, compare files, and preview file contents. |
| `task2.sh` | CSV and pipe practice | Uses `cut`, `cat`, process substitution, `grep`, `sort`, `uniq`, and `wc` to answer questions over survey CSV files. |
| `task3.sh` | `find`, `xargs`, and command chaining | Removes matching directories, creates numbered directories, compiles Java files, and redirects error output. |
| `homework4.sh` | Git commands | Prints a repository link and practices `git log`, `git diff`, and `git blame`. |
| `homework5 (1).sh` | Simple shell function | Tiny helper that prints the UW NetID used for the assignment. |
| `task1 HW6.sh` | Intro regex with `grep` | Matches names containing digits, four-letter names, and first/last names with capitalization rules. |
| `task2 HW6.sh` | Practical regex patterns | Matches email-like strings, password-like strings, and card-number-like strings. |
| `task3 HW6.sh` | Regex on biological strings | Searches DNA-like sequences for valid bases, invalid characters, repeated motifs, and start/stop codon-style patterns. |
| `task1 HW7.sh` | `sed` and text rewriting | Performs source-code and text transformations with `sed`, then extracts contributor names from Git logs. |
| `task1 HW8.sh` | Archives and permissions | Extracts a tarball and experiments with `chmod`, `chgrp`, `umask`, and privileged file reads. |

## How to read the exercises

Start with `task4.sh` if you are newer to the shell. It contains the most direct examples of basic commands. Then move to `task2.sh` and `task3.sh` to see how commands become more powerful when combined with pipes, redirection, `find`, and `xargs`.

After that, the `HW6` files are the regex section. They show how `grep -E` can be used to describe patterns rather than exact strings. `task1 HW7.sh` builds on that by using `sed` not just to search text, but to rewrite it. Finally, `task1 HW8.sh` focuses on permissions and archive handling, which are important but easier to misuse.

## Running a function manually

These files define functions; they do not call the functions automatically. To try one in a shell, source the file and then call the function you want:

```bash
source task4.sh
problem1
```

For files with spaces in their names, quote the filename:

```bash
source "task1 HW7.sh"
problem4
```

Most functions expect assignment-provided fixture files to exist in the current directory, such as `intro_survey_23au.csv`, `dna.txt`, `cards.txt`, or Java source files. Without those inputs, many commands will correctly fail with “file not found.”

## Safety note

Do not blindly run every function from this repository in an important directory. Some exercises intentionally use destructive or environment-changing commands such as `rm`, `chmod`, `chgrp`, `umask`, and `sudo`. Treat this as a learning archive: read the commands first, run them only in a disposable practice folder, and make sure you understand what files they will touch.

## Why this is useful

The value of these scripts is not that any one file is a finished product. The value is that they show the muscle memory behind everyday developer work: inspecting files quickly, transforming text without opening a full editor, searching large directories, understanding permissions, and using Git history as a debugging tool. In that sense, this repo is a compact command-line workbook rather than a traditional software project.
