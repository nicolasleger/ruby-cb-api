# Copyright 2015 CareerBuilder, LLC
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and limitations under the License.
module Cb
  module Responses
    module Job
      class Search < ApiResponse
        protected

        def validate_api_hash
          required_response_field(root_node, response)
        end

        def hash_containing_metadata
          'search_metadata'
        end

        def extract_models
          Models::JobResults.new(response)
        end

        private

        def root_node
          'data'
        end
      end
    end
  end
end
