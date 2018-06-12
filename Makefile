#
# Copyright (c) 2018 Red Hat, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This Makefile is just a wrapper calling the 'build' script, for those used
# to just run 'make'.
SOURCE := pkg/*/*.go

.PHONY: packages
packages:
	./build packages

.PHONY: clean
clean:
	rm -rf .gopath vendor

.PHONY: fmt
fmt: $(SOURCE)
	gofmt -s -l -w $(SOURCE)

.PHONY: lint
lint: $(SOURCE)
	golint -min_confidence 0.9 pkg/...

.PHONY: test-unit
test-unit:
	go test $(shell go list ./... | grep -v vendor)