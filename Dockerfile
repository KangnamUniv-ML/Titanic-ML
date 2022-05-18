FROM jupyter/tensorflow-notebook:tensorflow-2.6.2

COPY ./requirements.txt ./

RUN pip3 install -r requirements.txt

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--NotebookApp.token=''", "--NotebookApp.password=''", "--allow-root"]