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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.LogDescriptor do
  @moduledoc """
  A description of a log type. Example in YAML format: - name: library.googleapis.com/activity_history description: The history of borrowing and returning library items. display_name: Activity labels: - key: /customer_id description: Identifier of a library customer

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - A human-readable description of this log. This information appears in the documentation and can contain details.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The human-readable name for this log. This information appears on the user interface and should be concise.
  *   `labels` (*type:* `list(GoogleApi.ServiceConsumerManagement.V1.Model.LabelDescriptor.t)`, *default:* `nil`) - The set of labels that are available to describe a specific log entry. Runtime requests that contain labels not specified here are considered invalid.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the log. It must be less than 512 characters long and can include the following characters: upper- and lower-case alphanumeric characters [A-Za-z0-9], and punctuation characters including slash, underscore, hyphen, period [/_-.].
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :displayName => String.t(),
          :labels => list(GoogleApi.ServiceConsumerManagement.V1.Model.LabelDescriptor.t()),
          :name => String.t()
        }

  field(:description)
  field(:displayName)
  field(:labels, as: GoogleApi.ServiceConsumerManagement.V1.Model.LabelDescriptor, type: :list)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.LogDescriptor do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.LogDescriptor.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.LogDescriptor do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
