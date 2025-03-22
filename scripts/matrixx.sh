rm -rf .repo/local_manifests ; \
repo init --depth=1 --no-repo-verify -u https://github.com/ProjectMatrixx/android -b 15.0 -g default,-mips,-darwin,-notdefault && \
git clone https://github.com/aosp-realm/android_build_manifest.git -b apollo-evo14 .repo/local_manifests && \
/opt/crave/resync.sh && \
export RELAX_USES_LIBRARY_CHECK=true && \
source build/envsetup.sh && \
brunch apollo