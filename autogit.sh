#!/bin/bash

# Pindah ke direktori project website
cd /var/www/damz

# Tarik perubahan terbaru dari GitHub
git pull -X theirs
