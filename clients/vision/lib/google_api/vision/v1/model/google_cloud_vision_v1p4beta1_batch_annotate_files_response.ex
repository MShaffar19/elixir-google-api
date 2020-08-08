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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse do
  @moduledoc """
  A list of file annotation responses.

  ## Attributes

  *   `responses` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1AnnotateFileResponse.t)`, *default:* `nil`) - The list of file annotation responses, each response corresponding to each AnnotateFileRequest in BatchAnnotateFilesRequest.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :responses =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1AnnotateFileResponse.t())
        }

  field(:responses,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1AnnotateFileResponse,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
