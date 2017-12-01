#!/usr/bin/env python3

import os
from gitlab import Gitlab

pipeline_id = int(os.environ["CI_PIPELINE_ID"])
project_id = os.environ["CI_PROJECT_ID"]
ci_url = os.environ["CI_SERVER"]
gitlab_token = os.environ["GITLAB_TOKEN"]

gitlab_client = Gitlab(ci_url, gitlab_token, api_version=4)
gitlab_client.auth()

project = gitlab_client.projects.get(project_id)
latest_pipeline = project.pipelines.list(status=["running", "pending"], order_by="id", sort="desc", per_page=1)[0]

assert pipeline_id <= latest_pipeline.id

if pipeline_id < latest_pipeline.id:
    print("Running pipeline (%s) is not the latest (%s) - cancelling self" % (pipeline_id, latest_pipeline.id))
    pipeline = project.pipelines.get(pipeline_id, lazy=True)
    pipeline.cancel()
else:
    print("Running pipeline (%s) is the latest - continuing" % (pipeline_id, ))