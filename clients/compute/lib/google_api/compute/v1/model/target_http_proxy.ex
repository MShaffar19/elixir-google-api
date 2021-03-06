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

defmodule GoogleApi.Compute.V1.Model.TargetHttpProxy do
  @moduledoc """
  Represents a Target HTTP Proxy resource.

  Google Compute Engine has two Target HTTP Proxy resources:

  * [Global](/compute/docs/reference/rest/{$api_version}/targetHttpProxies) * [Regional](/compute/docs/reference/rest/{$api_version}/regionTargetHttpProxies)

  A target HTTP proxy is a component of GCP HTTP load balancers.

  * targetHttpProxies are used by external HTTP load balancers and Traffic Director. * regionTargetHttpProxies are used by internal HTTP load balancers.

  Forwarding rules reference a target HTTP proxy, and the target proxy then references a URL map. For more information, read Using Target Proxies and  Forwarding rule concepts. (== resource_for {$api_version}.targetHttpProxies ==) (== resource_for {$api_version}.regionTargetHttpProxies ==)

  ## Attributes

  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a TargetHttpProxy. An up-to-date fingerprint must be provided in order to patch/update the TargetHttpProxy; otherwise, the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve the TargetHttpProxy.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#targetHttpProxy`) - [Output Only] Type of resource. Always compute#targetHttpProxy for target HTTP proxies.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the region where the regional Target HTTP Proxy resides. This field is not applicable to global Target HTTP Proxies.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `urlMap` (*type:* `String.t`, *default:* `nil`) - URL to the UrlMap resource that defines the mapping from URL to the BackendService.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t(),
          :description => String.t(),
          :fingerprint => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :region => String.t(),
          :selfLink => String.t(),
          :urlMap => String.t()
        }

  field(:creationTimestamp)
  field(:description)
  field(:fingerprint)
  field(:id)
  field(:kind)
  field(:name)
  field(:region)
  field(:selfLink)
  field(:urlMap)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.TargetHttpProxy do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.TargetHttpProxy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.TargetHttpProxy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
