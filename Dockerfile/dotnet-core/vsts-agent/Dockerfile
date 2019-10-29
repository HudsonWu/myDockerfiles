# FROM lambda3/azure-pipelines-agent:docker
FROM hudsonwu/vsts-agent:base

USER root

RUN ls -a /agent
RUN mkdir /vsts-agent
COPY vsts-agent-linux-x64-2.159.2.tar.gz /vsts-agent
RUN cd /vsts-agent && tar -zxvf vsts-agent-linux-x64-2.159.2.tar.gz
RUN cd / && cp -rf /vsts-agent/* /agent
RUN cd / && rm -rf /vsts-agent && rm -f /agent/vsts-agent-linux-x64-2.159.2.tar.gz
RUN echo "查看/agent下的文件" && ls -a /agent

RUN chown -R agentuser:agentuser /agent
USER agentuser

# docker build . -t hudsonwu/vsts-agent:latest
