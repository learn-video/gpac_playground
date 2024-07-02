#!/bin/sh

rm -r llhls/*

gpac flist:srcs=big_buck_bunny.mp4:floop=-1 reframer:rt=sync -o llhls/live.m3u8:segdur=2:cdur=0.5:profile=live:dmode=dynamic:profile=live:muxtype=ts:llhls=sf

#gpac -i rtmp://localhost:1935/llhls -o llhls/live.m3u8:segdur=2:cdur=0.5:profile=live:dmode=dynamic:profile=live:muxtype=ts
