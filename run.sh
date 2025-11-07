docker pull rocm/pytorch:rocm6.4.4_ubuntu24.04_py3.12_pytorch_release_2.7.1
#init 
git clone https://github.com/qiangpan2/pytorch.git
git remote add rocm https://github.com/ROCm/pytorch.git
git checkout -b v271-test v2.7.1
cd pytorch
git submodule sync
git submodule update --init --recursive


uv sync --python /opt/conda/envs/py_3.12/bin/python

