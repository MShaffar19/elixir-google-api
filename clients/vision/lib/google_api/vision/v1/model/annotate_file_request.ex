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

defmodule GoogleApi.Vision.V1.Model.AnnotateFileRequest do
  @moduledoc """
  A request to annotate one single file, e.g. a PDF, TIFF or GIF file.

  ## Attributes

  *   `features` (*type:* `list(GoogleApi.Vision.V1.Model.Feature.t)`, *default:* `nil`) - Required. Requested features.
  *   `imageContext` (*type:* `GoogleApi.Vision.V1.Model.ImageContext.t`, *default:* `nil`) - Additional context that may accompany the image(s) in the file.
  *   `inputConfig` (*type:* `GoogleApi.Vision.V1.Model.InputConfig.t`, *default:* `nil`) - Required. Information about the input file.
  *   `pages` (*type:* `list(integer())`, *default:* `nil`) - Pages of the file to perform image annotation. Pages starts from 1, we assume the first page of the file is page 1. At most 5 pages are supported per request. Pages can be negative. Page 1 means the first page. Page 2 means the second page. Page -1 means the last page. Page -2 means the second to the last page. If the file is GIF instead of PDF or TIFF, page refers to GIF frames. If this field is empty, by default the service performs image annotation for the first 5 pages of the file.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :features => list(GoogleApi.Vision.V1.Model.Feature.t()),
          :imageContext => GoogleApi.Vision.V1.Model.ImageContext.t(),
          :inputConfig => GoogleApi.Vision.V1.Model.InputConfig.t(),
          :pages => list(integer())
        }

  field(:features, as: GoogleApi.Vision.V1.Model.Feature, type: :list)
  field(:imageContext, as: GoogleApi.Vision.V1.Model.ImageContext)
  field(:inputConfig, as: GoogleApi.Vision.V1.Model.InputConfig)
  field(:pages, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.AnnotateFileRequest do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.AnnotateFileRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.AnnotateFileRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
