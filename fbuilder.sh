#!/bin/sh
fvm flutter clean && fvm flutter pub cache repair &&  fvm flutter packages pub get && fvm dart run build_runner build --delete-conflicting-outputs
