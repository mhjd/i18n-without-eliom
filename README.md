# README
## How to test
Go to the root of the project.
Then, run it :
```
dune build
./_build/default/main.exe
```
Normally, an index.html file will appear in the directory.
## Commands :
Here is the commands for generating i18n files.
### Header-body distinct : 
Generate the header :
```
ocsigen-i18n --header --languages en,fr --output-file header.ml
```
Generate the body :
```
ocsigen-i18n --primary header.ml --languages en,fr --input-file test.tsv --output-file body.ml
```
### Header-body in one file
```
ocsigen-i18n --languages en,fr --input-file test.tsv --output-file headerbody.ml
```
