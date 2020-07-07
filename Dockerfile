FROM pytorch/pytorch:1.1.0-cuda10.0-cudnn7.5-runtime

WORKDIR /opt/nboost

RUN pip install --upgrade pip

COPY . /opt/nboost

RUN pip install -e .
RUN pip install transformers

ENTRYPOINT nboost --uhost $UHOST --uport $UPORT --search_route $SEARCH_ROUTE --query_path $QUERY_PATH --topk_path $TOPK_PATH --default_topk $DEFAULT_TOPK --choices_path $CHOIVES_PATH --cvalues_path $CVALUES_PATH --model_dir $MODEL_DIR --topn $TOPN