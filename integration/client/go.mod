module github.com/containerd/containerd/integration/client

go 1.15

require (
	github.com/Microsoft/hcsshim v0.9.8
	github.com/Microsoft/hcsshim/test v0.0.0-20210408205431-da33ecd607e1
	github.com/containerd/cgroups v1.0.4
	// the actual version of containerd is replaced with the code at the root of this repository
	github.com/containerd/containerd v1.6.18
	github.com/containerd/continuity v0.3.0
	github.com/containerd/go-runc v1.0.0
	github.com/containerd/ttrpc v1.1.2
	github.com/containerd/typeurl v1.0.2
	github.com/gogo/protobuf v1.3.2
	github.com/opencontainers/go-digest v1.0.0
	github.com/opencontainers/image-spec v1.1.0-rc2.0.20221005185240-3a7f492d3f1b
	github.com/opencontainers/runtime-spec v1.0.3-0.20210326190908-1c3f411f0417
	github.com/sirupsen/logrus v1.9.0
	golang.org/x/sys v0.6.0
	gotest.tools/v3 v3.5.0
)

replace (
	// use the containerd module from this repository instead of downloading
	//
	// IMPORTANT: this replace rule ONLY replaces containerd itself; dependencies
	// in the "require" section above are still taken into account for version
	// resolution if newer.
	github.com/containerd/containerd => ../../

	// Replace rules below must be kept in sync with the main go.mod file at the
	// root, because that's the actual version expected by the "containerd/containerd"
	// dependency above.
	github.com/gogo/googleapis => github.com/gogo/googleapis v1.3.2

	// prevent go mod from rolling this back to the last tagged release; see https://github.com/containerd/containerd/pull/6739
	github.com/opencontainers/image-spec => github.com/opencontainers/image-spec v1.1.0-rc2.0.20221005185240-3a7f492d3f1b
	// urfave/cli must be <= v1.22.1 due to a regression: https://github.com/urfave/cli/issues/1092
	github.com/urfave/cli => github.com/urfave/cli v1.22.1
	google.golang.org/genproto => google.golang.org/genproto v0.0.0-20200224152610-e50cd9704f63
)
