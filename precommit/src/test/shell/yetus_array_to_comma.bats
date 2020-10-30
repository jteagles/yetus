#!/usr/bin/env bash
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load functions_test_helper

@test "yetus_array_to_comma (empty)" {
  # shellcheck disable=SC2034
  ARRAY=()
  run yetus_array_to_comma ARRAY
  [ "${output}" = "" ]
}

@test "yetus_array_to_comma (one)" {
  # shellcheck disable=SC2034
  ARRAY=(one)
  run yetus_array_to_comma ARRAY
  [ "${output}" = "one" ]
}

@test "yetus_array_to_comma (two)" {
  # shellcheck disable=SC2034
  ARRAY=(one two)
  run yetus_array_to_comma ARRAY
  [ "${output}" = "one,two" ]
}

@test "yetus_array_to_comma (three)" {
  # shellcheck disable=SC2034
  ARRAY=(one two three)
  run yetus_array_to_comma ARRAY
  [ "${output}" = "one,two,three" ]
}