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

defmodule GoogleApi.Vision.V1.Model.Result do
  @moduledoc """
  Information about a product.

  ## Attributes

  *   `image` (*type:* `String.t`, *default:* `nil`) - The resource name of the image from the product that is the closest match to the query.
  *   `product` (*type:* `GoogleApi.Vision.V1.Model.Product.t`, *default:* `nil`) - The Product.
  *   `score` (*type:* `number()`, *default:* `nil`) - A confidence level on the match, ranging from 0 (no confidence) to 1 (full confidence).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :image => String.t(),
          :product => GoogleApi.Vision.V1.Model.Product.t(),
          :score => number()
        }

  field(:image)
  field(:product, as: GoogleApi.Vision.V1.Model.Product)
  field(:score)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.Result do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.Result.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.Result do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
