# 🧠 ProLog

[![Install Prolog](https://img.shields.io/badge/Install-Prolog-blue?style=for-the-badge)](https://www.swi-prolog.org/)

## 📦 Installation

Run the following command in your terminal:

```bash
sudo apt-get install swi-prolog
```

## 🔧 Invoke Prolog and Check Version

To invoke the Prolog interpreter, run:

```bash
prolog
```

To check the installed version of SWI-Prolog, run:

```bash
prolog --version
```

## 📂 Consult a Prolog File

To load a Prolog file into the interpreter, use the `consult/1` predicate:

```prolog
?- consult('file.pl').
```

To reload the file (useful after making changes), use:

```prolog
?- reconsult(source).
```

You can do this to load the `source.pl` in the interpreter and tou terminal will be ready for consults:

```bash
prolog -s source.pl
```
If you don't want iterative mode, use -g for your goal and -t to end the prolog, like that:

```bash
prolog -s source.pl -g "goal(X),print(X),nl,fail." -t halt
```