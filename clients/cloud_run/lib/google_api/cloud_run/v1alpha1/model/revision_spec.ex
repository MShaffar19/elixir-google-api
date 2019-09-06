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

defmodule GoogleApi.CloudRun.V1alpha1.Model.RevisionSpec do
  @moduledoc """
  RevisionSpec holds the desired state of the Revision (from the client).

  ## Attributes

  *   `concurrencyModel` (*type:* `String.t`, *default:* `nil`) - ConcurrencyModel specifies the desired concurrency model
      (Single or Multi) for the Revision. Defaults to Multi.
      Deprecated in favor of ContainerConcurrency.
      +optional
  *   `container` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.Container.t`, *default:* `nil`) - Container defines the unit of execution for this Revision.
      In the context of a Revision, we disallow a number of the fields of
      this Container, including: name, ports, and volumeMounts.
      The runtime contract is documented here:
      https://github.com/knative/serving/blob/master/docs/runtime-contract.md
  *   `containerConcurrency` (*type:* `integer()`, *default:* `nil`) - (Optional)

      ContainerConcurrency specifies the maximum allowed in-flight (concurrent)
      requests per container instance of the Revision.

      Cloud Run fully managed: supported, defaults to 80

      Cloud Run on GKE: supported, defaults to 0, which means concurrency
      to the application is not limited, and the system decides the
      target concurrency for the autoscaler.
  *   `containers` (*type:* `list(GoogleApi.CloudRun.V1alpha1.Model.Container.t)`, *default:* `nil`) - Containers holds the single container that defines the unit of execution
      for this Revision. In the context of a Revision, we disallow a number of
      fields on this Container, including: name and lifecycle.
      In Cloud Run, only a single container may be provided.
  *   `generation` (*type:* `integer()`, *default:* `nil`) - Deprecated and not currently populated by Cloud Run. See
      metadata.generation instead, which is the sequence number containing the
      latest generation of the desired state.

      Read-only.
  *   `serviceAccountName` (*type:* `String.t`, *default:* `nil`) - Email address of the IAM service account associated with the revision
      of the service. The service account represents the identity of the
      running revision, and determines what permissions the revision has. If
      not provided, the revision will use the project's default service account.
  *   `servingState` (*type:* `String.t`, *default:* `nil`) - ServingState holds a value describing the state the resources
      are in for this Revision.
      Users must not specify this when creating a revision. It is expected
      that the system will manipulate this based on routability and load.

      Populated by the system.
      Read-only.
  *   `timeoutSeconds` (*type:* `integer()`, *default:* `nil`) - TimeoutSeconds holds the max duration the instance is allowed for
      responding to a request.
      Not currently used by Cloud Run.
  *   `volumes` (*type:* `list(GoogleApi.CloudRun.V1alpha1.Model.Volume.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :concurrencyModel => String.t(),
          :container => GoogleApi.CloudRun.V1alpha1.Model.Container.t(),
          :containerConcurrency => integer(),
          :containers => list(GoogleApi.CloudRun.V1alpha1.Model.Container.t()),
          :generation => integer(),
          :serviceAccountName => String.t(),
          :servingState => String.t(),
          :timeoutSeconds => integer(),
          :volumes => list(GoogleApi.CloudRun.V1alpha1.Model.Volume.t())
        }

  field(:concurrencyModel)
  field(:container, as: GoogleApi.CloudRun.V1alpha1.Model.Container)
  field(:containerConcurrency)
  field(:containers, as: GoogleApi.CloudRun.V1alpha1.Model.Container, type: :list)
  field(:generation)
  field(:serviceAccountName)
  field(:servingState)
  field(:timeoutSeconds)
  field(:volumes, as: GoogleApi.CloudRun.V1alpha1.Model.Volume, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.RevisionSpec do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.RevisionSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.RevisionSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
