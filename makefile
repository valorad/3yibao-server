OUTPUT="build/3yibao"
SRCFILES=`find . -name "*.go" -type f -not -path "./build/*"`

default:
	@go build -o ${OUTPUT}

format:
	@gofmt -s -w ${SRCFILES}

clean:
	@if [ -f ${OUTPUT} ] ; then rm ${OUTPUT} ; fi