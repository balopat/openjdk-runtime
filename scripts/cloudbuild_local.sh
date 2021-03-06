#!/bin/bash

# Copyright 2016 Google Inc. All rights reserved.

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -e

cloudBuildScript="https://raw.githubusercontent.com/GoogleCloudPlatform/python-runtime/b9aaae5d441a8e63698d6a101191545183278362/scripts/local_cloudbuild.py"
curl -s $cloudBuildScript | python3 - "$@" --output_script=`mktemp`
