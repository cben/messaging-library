/*
Copyright (c) 2018 Red Hat, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

package stomp

// ConnectionSpec is a helper struct for building connections.
type ConnectionSpec struct {
	BrokerHost   string
	BrokerPort   int
	UserName     string
	UserPassword string
	UseTLS       bool
	InsecureTLS  bool
}
