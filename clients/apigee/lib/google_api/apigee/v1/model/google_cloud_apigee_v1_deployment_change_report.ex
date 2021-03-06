# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeploymentChangeReport do
  @moduledoc """
  Response for GenerateDeployChangeReport and GenerateUndeployChangeReport. This report contains any validation failures that would cause the deployment to be rejected, as well changes and conflicts in routing that may occur due to the new deployment. The existence of a routing warning does not necessarily imply that the deployment request is bad, if the desired state of the deployment request is to effect a routing change. The primary purposes of the routing messages are: 1) To inform users of routing changes that may have an effect on traffic currently being routed to other existing deployments. 2) To warn users if some basepath in the proxy will not receive traffic due to an existing deployment having already claimed that basepath. The presence of routing conflicts/changes will not cause non-dry-run DeployApiProxy/UndeployApiProxy requests to be rejected.

  ## Attributes

  *   `routingChanges` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeploymentChangeReportRoutingChange.t)`, *default:* `nil`) - All routing changes that may result from a deployment request.
  *   `routingConflicts` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict.t)`, *default:* `nil`) - All basepath conflicts detected for a deployment request.
  *   `validationErrors` (*type:* `GoogleApi.Apigee.V1.Model.GoogleRpcPreconditionFailure.t`, *default:* `nil`) - Validation errors that would cause the deployment change request to be rejected.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :routingChanges =>
            list(
              GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeploymentChangeReportRoutingChange.t()
            ),
          :routingConflicts =>
            list(
              GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict.t()
            ),
          :validationErrors => GoogleApi.Apigee.V1.Model.GoogleRpcPreconditionFailure.t()
        }

  field(:routingChanges,
    as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeploymentChangeReportRoutingChange,
    type: :list
  )

  field(:routingConflicts,
    as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict,
    type: :list
  )

  field(:validationErrors, as: GoogleApi.Apigee.V1.Model.GoogleRpcPreconditionFailure)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeploymentChangeReport do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeploymentChangeReport.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeploymentChangeReport do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
