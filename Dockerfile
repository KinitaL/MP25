FROM continuumio/miniconda3

WORKDIR /app

# Create the environment:
COPY environment.yml /app/environment.yml
RUN conda env create -f /app/environment.yml

# Make the conda env active by default:
RUN echo "source activate mp" > ~/.bashrc
ENV PATH /opt/conda/envs/mp/bin:$PATH

# The code to run when container is started:
CMD ["/bin/sh", "-c", "bash"]
