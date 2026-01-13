
git submodule sync
git submodule update --init --recursive

python tools/amd_build/build_amd.py

export USE_ROCM=1
PYTORCH_ROCM_ARCH="gfx1100;gfx1201" \
    CXXFLAGS="-Wno-uninitialized" \
    CFLAGS="-Wno-uninitialized" \
    python setup.py bdist_wheel > build.log 2>&1