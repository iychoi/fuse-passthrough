#
# The principal targets include:
#
#       all             build all of the tools
#       clean           clean out all object files
#

CFLAGS=`pkg-config fuse --cflags`
LDFLAGS=`pkg-config fuse --libs`

#
# Principal Targets
#
.PHONY: all passthrough clean print_cflags print_ldflags
all:    passthrough
	@true

passthrough:
	$(CC) passthrough.c $(CFLAGS) $(LDFLAGS) -o passthrough


# Show compile flags
print_cflags:
	@echo "Compile flags:"
	@echo "    $(CFLAGS)"

# Show link flags
print_ldflags:
	@echo "Link flags:"
	@echo "    $(LDFLAGS)"

# Clean
clean:
	@echo "Cleaning..."
	@rm -f passthrough
