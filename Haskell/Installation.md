# 🧠 Haskell

[![Install Haskell](https://img.shields.io/badge/Install-Haskell-blue?style=for-the-badge)](https://www.haskell.org/downloads/)

## 📦 Installation

Run the following command in your terminal:

```bash
sudo apt-get install ghc
```

## 🔧 Invoke Haskell and Check Version

To invoke the Haskell compiler, run:

```bash
ghci
```

To check the installed version of Haskell, run:

```bash
ghci --version
```

## 📂 Consult a Haskell File

You can do this to load the `source.hs` in the compiler and tou terminal will be ready for run:

```bash
ghci source.hs
```
If you don't want iterative mode, run like that:

```bash
ghc source.hs -o source
./source <Params>
```