#!/bin/sh
echo > LF

cat ace-noconflict.js > _ace.js
find keybinding-*-noconflict.js | grep -v uncompressed | xargs -n1 cat LF >> _ace.js
cat LF mode-c_cpp-noconflict.js >> _ace.js
cat LF mode-css-noconflict.js >> _ace.js
cat LF mode-html-noconflict.js >> _ace.js
cat LF mode-javascript-noconflict.js >> _ace.js
cat LF mode-json-noconflict.js >> _ace.js
find theme-*-noconflict.js | grep -v uncompressed | xargs -n1 cat LF >> _ace.js

cat ace-uncompressed-noconflict.js > _ace-uncompressed.js
cat LF keybinding-*-uncompressed-noconflict.js >> _ace-uncompressed.js
cat LF mode-c_cpp-uncompressed-noconflict.js >> _ace-uncompressed.js
cat LF mode-css-uncompressed-noconflict.js >> _ace-uncompressed.js
cat LF mode-html-uncompressed-noconflict.js >> _ace-uncompressed.js
cat LF mode-javascript-uncompressed-noconflict.js >> _ace-uncompressed.js
cat LF mode-json-uncompressed-noconflict.js >> _ace-uncompressed.js
cat LF theme-*-uncompressed-noconflict.js >> _ace-uncompressed.js

rm LF