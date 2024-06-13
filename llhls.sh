#!/bin/sh

rm -r llhls/*

MP4Box -frag-rt -dash-live 10000 -frag 1000 -profile live -out llhls/live.m3u8:llhls=sf big_buck_bunny.mp4
gpac -i big_buck_bunny.mp4 reframer:rt=on -o llhls/live.m3u8:segdur=10:cdur=1:profile=live:dmode=dynamic:llhls=sf
