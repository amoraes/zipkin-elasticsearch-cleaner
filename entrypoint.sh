# Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except
# in compliance with the License. You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed under the License
# is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
# or implied. See the License for the specific language governing permissions and limitations under
# the License.
sed "s/ES_HOST_DOMAIN/${ES_HOST_DOMAIN}/g; s/ES_HOST_PORT/${ES_HOST_PORT}/g; s/USE_SSL/${USE_SSL}/g" config.template.yml > config.yml
sed "s/TIME_UNIT/$TIME_UNIT/g; s/THRESHOLD/$THRESHOLD/g" actions.template.yml > actions.yml
echo "Configuration to run..."
cat config.yml
echo "Actions to run..."
cat actions.yml
echo "Starting curator..."
curator --dry-run --config config.yml actions.yml
