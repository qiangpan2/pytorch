docker pull rocm/pytorch:rocm6.4.4_ubuntu24.04_py3.12_pytorch_release_2.7.1
#init 
git clone https://github.com/qiangpan2/pytorch.git
git remote add rocm https://github.com/ROCm/pytorch.git
git checkout -b v271-test v2.7.1
cd pytorch
git submodule sync
git submodule update --init --recursive


uv venv --python /opt/conda/envs/py_3.12/bin/python .venv
uv pip install -r requirements.txt
uv pip install cmake ninja
python tools/amd_build/build_amd.py
python setup.py bdist_wheel > build.log 2>&1

