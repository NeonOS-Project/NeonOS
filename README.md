# NeonOS - A UNIX-like Hobby OS Project

![Static Badge](https://img.shields.io/badge/Built_with-C-white)
![Static Badge](https://img.shields.io/badge/License-BSD_3_Clause-red)
[![justforfunnoreally.dev badge](https://img.shields.io/badge/justforfunnoreally-dev-9ff)](https://justforfunnoreally.dev)

Welcome to *the* repository for **NeonOS** - a free, open-sourced hobby project Operating System that plans to be POSIX compliant and fairly lightweight. **NeonOS** is written in plain C, minimizing dependencies where possible. Of course, **NeonOS** isn't being built to compete with any existing UNIX/POSIX like system, this is being built *just for fun!*

## Just for Fun™

Yes, really. Just for fun is the primary reason behind the development of this OS. I usually don't do projects at this low of a level. But I've always wanted to understand the inner complexities and sheer scale of an Operating System. There's no better way to learn than to simply do it myself!

## Goals for the Kernel

- **Modularity** – Components like memory management, scheduling, and drivers should be cleanly separated.
- **Multitasking** – Support for basic preemptive multitasking and process management.
- **POSIX-enough** – Where feasible, POSIX compatibility is a goal (but not a hard constraint).
- **Portable-ish** – Initially targeting x86_64 with an eye toward extensibility for other platforms later.
- **Properly Documented** - Code documents and general system documentation should be clear and comprehemsive.

These goals may change as the project evolves or my understanding deepens, or as I flux massively in and out of caffeine highs.

## Found a Bug or Security Issue?

If you’ve found a bug, crash, or security issue (even something minor), please feel free to:

1. **Open an Issue** – Use the GitHub Issues tab and provide a minimal but complete description of the problem.
2. **Submit a Pull Request** – Fork the repo, create a new branch, and submit a PR with your fix. Please describe the change and why it works.

Even typo fixes are welcome—every bit helps!

**Note:** This project is in very early stages, so things will almost certainly be unstable.

## Why musl ?

glibc is battle tested and mature, don't get me wrong. But for this project, musl was the better choice. It's lighter, remains POSIX compliant, and is already in use in several other OS projects. It also has the incredibly relaxed (and my favourite) license, MIT. The license for musl (and all other dependancies) can be found in [thirdpartylicenses](./thirdpartylicenses.txt).