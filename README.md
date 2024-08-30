# README

## Commands :
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
