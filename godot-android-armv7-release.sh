rm -r platform/android/java/build
rm -r platform/android/java/app/build
rm -r platform/android/java/app/libs
rm -r platform/android/java/lib/build
rm -r platform/android/java/lib/libs

scons -j6 --config=force --no-cache platform=android android_arch=armv7 target=release tools=no optimize=size use_lto=yes disable_3d=yes disable_advanced_gui=yes deprecated=no minizip=no xml=no module_arkit_enabled=no module_assimp_enabled=no module_bmp_enabled=no module_bullet_enabled=no module_camera_enabled=no module_csg_enabled=no module_dds_enabled=no module_enet_enabled=no module_etc_enabled=no module_gdnative_enabled=no module_gridmap_enabled=no module_hdr_enabled=no module_jsonrpc_enabled=no module_mbedtls_enabled=no module_mobile_vr_enabled=no module_opensimplex_enabled=no builtin_openssl=no module_opus_enabled=no module_pvr_enabled=no module_recast_enabled=no module_regex_enabled=no module_squish_enabled=no module_svg_enabled=no module_tga_enabled=no module_theora_enabled=no module_tinyexr_enabled=no module_upnp_enabled=no module_vhacd_enabled=no module_visual_script=no module_vorbis_enabled=no module_webm_enabled=no module_webp_enabled=no module_webrtc_enabled=no module_websocket_enabled=no module_xatlas_unwrap_enabled=no builtin_enet=no builtin_libogg=no builtin_libtheora=no builtin_libvorbis=no builtin_libvpx=no builtin_libwebp=no builtin_wslay=no builtin_mbedtls=no builtin_miniupnpc=no builtin_opus=no builtin_pcre2=no builtin_pcre2_with_jit=no builtin_recast=no builtin_squish=no builtin_xatlas=no builtin_zlib=no builtin_zstd=yes builtin_glew=no game_center=no store_kit=no icloud=no 

cd platform/android/java
./gradlew clean
./gradlew generateGodotTemplates
cd ../../../
cd bin
pwd
cp android_release.apk ~/android-armv7-release.apk