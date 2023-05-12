#!/bin/bash
set -e

testAlias+=(
	[bgld-arm:trusty]='bgld-arm'
)

imageTests+=(
	[bgld-arm]='
		rpcpassword
	'
)
