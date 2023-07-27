FROM tensorflow/tensorflow:2.7.0-gpu
ENV TZ="Asia/Taipei"
WORKDIR /elra

RUN python3 -m pip install --upgrade pip
RUN pip install jax==0.2.13 jaxlib==0.1.65+cuda112 flax==0.2.2 -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html
RUN pip install tensorflow-datasets==4.4.0 tensorflow-text==2.7.0 protobuf==3.19.1
RUN pip install gin-config ml-collections
