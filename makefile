MAKEFLAGS=--no-print-directory
J=-j4

o3:
	@$(MAKE) $(J) -C obj/o3 o3
debug:
	@$(MAKE) -C obj/debug debug
rtperf:
	@$(MAKE) $(J) -C obj/rtperf rtperf
heapverify:
	@$(MAKE) $(J) -C obj/heapverify heapverify
rtverify:
	@$(MAKE) $(J) -C obj/rtverify rtverify

o3-clean:
	@$(MAKE) -C obj/o3 clean
debug-clean:
	@$(MAKE) -C obj/debug clean
rtperf-clean:
	@$(MAKE) -C obj/rtperf clean
heapverify-clean:
	@$(MAKE) -C obj/heapverify clean
rtverify-clean:
	@$(MAKE) -C obj/rtverify clean

clean: o3-clean debug-clean rtperf-clean heapverify-clean rtverify-clean
