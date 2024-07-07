FROM quay.io/astronomer/astro-runtime:11.5.0
RUN python3 -m venv dbt_venv && source dbt_venv/bin/activate && pip3 install --no-cache-dir dbt-snowflake && deactivate

