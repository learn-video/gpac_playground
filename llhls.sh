#!/bin/sh

rm -r llhls/*

#gpac flist:srcs=big_buck_bunny.mp4:floop=-1 reframer:rt=sync -o llhls/live.m3u8:segdur=2:cdur=0.5:profile=live:dmode=dynamic:profile=live:muxtype=ts:llhls=sf

gpac -i rtmp://localhost:1935/llhls @@ c=avc:b=1300k:FID=S1M @@ ffsws:osize=630x360 @ \
    c=avc:b=2000k:FID=S2M @@ ffsws:osize=768x432 \
    -o http://localhost:8081/llhls/live.m3u8:gpac:segdur=2:cdur=0.5:profile=live:dmode=dynamic:rdirs=llhls:profile=live:muxtype=ts:llhls=sf:SID=S1M,S2M
