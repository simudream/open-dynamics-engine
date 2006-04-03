# C++ Console Executable Makefile autogenerated by premake
# Don't edit this file! Instead edit `premake.lua` then rerun `make`

ifndef CONFIG
  CONFIG=DebugDLL
endif

ifeq ($(CONFIG),DebugDLL)
  BINDIR := ../../lib/DebugDLL
  LIBDIR := ../../lib/DebugDLL
  OBJDIR := obj/ode/DebugDLL
  OUTDIR := ../../lib/DebugDLL
  CPPFLAGS := -MD -D "WIN32" -D "ODE_DLL" -I "../../include" -I "../../OPCODE"
  CFLAGS += $(CPPFLAGS) -g
  CXXFLAGS := $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -shared -luser32
  LDDEPS :=
  TARGET := ode.dll
  BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES)
endif

ifeq ($(CONFIG),ReleaseDLL)
  BINDIR := ../../lib/ReleaseDLL
  LIBDIR := ../../lib/ReleaseDLL
  OBJDIR := obj/ode/ReleaseDLL
  OUTDIR := ../../lib/ReleaseDLL
  CPPFLAGS := -MD -D "WIN32" -D "ODE_DLL" -I "../../include" -I "../../OPCODE"
  CFLAGS += $(CPPFLAGS) -g
  CXXFLAGS := $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -shared -luser32
  LDDEPS :=
  TARGET := ode.dll
  BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES)
endif

ifeq ($(CONFIG),DebugLib)
  BINDIR := ../../lib/DebugLib
  LIBDIR := ../../lib/DebugLib
  OBJDIR := obj/ode/DebugLib
  OUTDIR := ../../lib/DebugLib
  CPPFLAGS := -MD -D "WIN32" -D "ODE_LIB" -I "../../include" -I "../../OPCODE"
  CFLAGS += $(CPPFLAGS) -g
  CXXFLAGS := $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -luser32
  LDDEPS :=
  TARGET := ode.lib
  BLDCMD = ar -cr $(OUTDIR)/$(TARGET) $(OBJECTS); ranlib $(OUTDIR)/$(TARGET)
endif

ifeq ($(CONFIG),ReleaseLib)
  BINDIR := ../../lib/ReleaseLib
  LIBDIR := ../../lib/ReleaseLib
  OBJDIR := obj/ode/ReleaseLib
  OUTDIR := ../../lib/ReleaseLib
  CPPFLAGS := -MD -D "WIN32" -D "ODE_LIB" -I "../../include" -I "../../OPCODE"
  CFLAGS += $(CPPFLAGS) -g
  CXXFLAGS := $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -luser32
  LDDEPS :=
  TARGET := ode.lib
  BLDCMD = ar -cr $(OUTDIR)/$(TARGET) $(OBJECTS); ranlib $(OUTDIR)/$(TARGET)
endif

OBJECTS := \
	$(OBJDIR)/fastdot.o \
	$(OBJDIR)/fastldlt.o \
	$(OBJDIR)/fastlsolve.o \
	$(OBJDIR)/fastltsolve.o \
	$(OBJDIR)/array.o \
	$(OBJDIR)/box.o \
	$(OBJDIR)/capsule.o \
	$(OBJDIR)/collision_cylinder_box.o \
	$(OBJDIR)/collision_cylinder_plane.o \
	$(OBJDIR)/collision_cylinder_sphere.o \
	$(OBJDIR)/collision_cylinder_trimesh.o \
	$(OBJDIR)/collision_kernel.o \
	$(OBJDIR)/collision_quadtreespace.o \
	$(OBJDIR)/collision_space.o \
	$(OBJDIR)/collision_transform.o \
	$(OBJDIR)/collision_trimesh.o \
	$(OBJDIR)/collision_trimesh_box.o \
	$(OBJDIR)/collision_trimesh_ccylinder.o \
	$(OBJDIR)/collision_trimesh_distance.o \
	$(OBJDIR)/collision_trimesh_ray.o \
	$(OBJDIR)/collision_trimesh_sphere.o \
	$(OBJDIR)/collision_trimesh_trimesh.o \
	$(OBJDIR)/collision_util.o \
	$(OBJDIR)/cylinder.o \
	$(OBJDIR)/error.o \
	$(OBJDIR)/export-dif.o \
	$(OBJDIR)/joint.o \
	$(OBJDIR)/lcp.o \
	$(OBJDIR)/mass.o \
	$(OBJDIR)/mat.o \
	$(OBJDIR)/matrix.o \
	$(OBJDIR)/memory.o \
	$(OBJDIR)/misc.o \
	$(OBJDIR)/obstack.o \
	$(OBJDIR)/ode.o \
	$(OBJDIR)/odemath.o \
	$(OBJDIR)/plane.o \
	$(OBJDIR)/quickstep.o \
	$(OBJDIR)/ray.o \
	$(OBJDIR)/rotation.o \
	$(OBJDIR)/sphere.o \
	$(OBJDIR)/step.o \
	$(OBJDIR)/stepfast.o \
	$(OBJDIR)/testing.o \
	$(OBJDIR)/timer.o \
	$(OBJDIR)/util.o \
	$(OBJDIR)/Opcode.o \
	$(OBJDIR)/OPC_AABBCollider.o \
	$(OBJDIR)/OPC_AABBTree.o \
	$(OBJDIR)/OPC_BaseModel.o \
	$(OBJDIR)/OPC_BoxPruning.o \
	$(OBJDIR)/OPC_Collider.o \
	$(OBJDIR)/OPC_Common.o \
	$(OBJDIR)/OPC_HybridModel.o \
	$(OBJDIR)/OPC_LSSCollider.o \
	$(OBJDIR)/OPC_MeshInterface.o \
	$(OBJDIR)/OPC_Model.o \
	$(OBJDIR)/OPC_OBBCollider.o \
	$(OBJDIR)/OPC_OptimizedTree.o \
	$(OBJDIR)/OPC_Picking.o \
	$(OBJDIR)/OPC_PlanesCollider.o \
	$(OBJDIR)/OPC_RayCollider.o \
	$(OBJDIR)/OPC_SphereCollider.o \
	$(OBJDIR)/OPC_SweepAndPrune.o \
	$(OBJDIR)/OPC_TreeBuilders.o \
	$(OBJDIR)/OPC_TreeCollider.o \
	$(OBJDIR)/OPC_VolumeCollider.o \
	$(OBJDIR)/StdAfx.o \
	$(OBJDIR)/IceAABB.o \
	$(OBJDIR)/IceContainer.o \
	$(OBJDIR)/IceHPoint.o \
	$(OBJDIR)/IceIndexedTriangle.o \
	$(OBJDIR)/IceMatrix3x3.o \
	$(OBJDIR)/IceMatrix4x4.o \
	$(OBJDIR)/IceOBB.o \
	$(OBJDIR)/IcePlane.o \
	$(OBJDIR)/IcePoint.o \
	$(OBJDIR)/IceRandom.o \
	$(OBJDIR)/IceRay.o \
	$(OBJDIR)/IceRevisitedRadix.o \
	$(OBJDIR)/IceSegment.o \
	$(OBJDIR)/IceTriangle.o \
	$(OBJDIR)/IceUtils.o \

RESOURCES := \

CMD := $(subst \,\\,$(ComSpec)$(COMSPEC))
ifeq (,$(CMD))
  CMD_MKBINDIR := mkdir -p $(BINDIR)
  CMD_MKLIBDIR := mkdir -p $(LIBDIR)
  CMD_MKOUTDIR := mkdir -p $(OUTDIR)
  CMD_MKOBJDIR := mkdir -p $(OBJDIR)
else
  CMD_MKBINDIR := $(CMD) /c if not exist $(subst /,\\,$(BINDIR)) mkdir $(subst /,\\,$(BINDIR))
  CMD_MKLIBDIR := $(CMD) /c if not exist $(subst /,\\,$(LIBDIR)) mkdir $(subst /,\\,$(LIBDIR))
  CMD_MKOUTDIR := $(CMD) /c if not exist $(subst /,\\,$(OUTDIR)) mkdir $(subst /,\\,$(OUTDIR))
  CMD_MKOBJDIR := $(CMD) /c if not exist $(subst /,\\,$(OBJDIR)) mkdir $(subst /,\\,$(OBJDIR))
endif

.PHONY: clean

$(OUTDIR)/$(TARGET): $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking ode
	-@$(CMD_MKBINDIR)
	-@$(CMD_MKLIBDIR)
	-@$(CMD_MKOUTDIR)
	@$(BLDCMD)

clean:
	@echo Cleaning ode
	-@rm -rf $(OUTDIR)/$(TARGET) $(OBJDIR)

$(OBJDIR)/fastdot.o: ../../ode/src/fastdot.c
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CC) $(CFLAGS) -o $@ -c $<

$(OBJDIR)/fastldlt.o: ../../ode/src/fastldlt.c
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CC) $(CFLAGS) -o $@ -c $<

$(OBJDIR)/fastlsolve.o: ../../ode/src/fastlsolve.c
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CC) $(CFLAGS) -o $@ -c $<

$(OBJDIR)/fastltsolve.o: ../../ode/src/fastltsolve.c
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CC) $(CFLAGS) -o $@ -c $<

$(OBJDIR)/array.o: ../../ode/src/array.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/box.o: ../../ode/src/box.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/capsule.o: ../../ode/src/capsule.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/collision_cylinder_box.o: ../../ode/src/collision_cylinder_box.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/collision_cylinder_plane.o: ../../ode/src/collision_cylinder_plane.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/collision_cylinder_sphere.o: ../../ode/src/collision_cylinder_sphere.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/collision_cylinder_trimesh.o: ../../ode/src/collision_cylinder_trimesh.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/collision_kernel.o: ../../ode/src/collision_kernel.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/collision_quadtreespace.o: ../../ode/src/collision_quadtreespace.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/collision_space.o: ../../ode/src/collision_space.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/collision_transform.o: ../../ode/src/collision_transform.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/collision_trimesh.o: ../../ode/src/collision_trimesh.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/collision_trimesh_box.o: ../../ode/src/collision_trimesh_box.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/collision_trimesh_ccylinder.o: ../../ode/src/collision_trimesh_ccylinder.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/collision_trimesh_distance.o: ../../ode/src/collision_trimesh_distance.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/collision_trimesh_ray.o: ../../ode/src/collision_trimesh_ray.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/collision_trimesh_sphere.o: ../../ode/src/collision_trimesh_sphere.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/collision_trimesh_trimesh.o: ../../ode/src/collision_trimesh_trimesh.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/collision_util.o: ../../ode/src/collision_util.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/cylinder.o: ../../ode/src/cylinder.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/error.o: ../../ode/src/error.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/export-dif.o: ../../ode/src/export-dif.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/joint.o: ../../ode/src/joint.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/lcp.o: ../../ode/src/lcp.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/mass.o: ../../ode/src/mass.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/mat.o: ../../ode/src/mat.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/matrix.o: ../../ode/src/matrix.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/memory.o: ../../ode/src/memory.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/misc.o: ../../ode/src/misc.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/obstack.o: ../../ode/src/obstack.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/ode.o: ../../ode/src/ode.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/odemath.o: ../../ode/src/odemath.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/plane.o: ../../ode/src/plane.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/quickstep.o: ../../ode/src/quickstep.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/ray.o: ../../ode/src/ray.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/rotation.o: ../../ode/src/rotation.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/sphere.o: ../../ode/src/sphere.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/step.o: ../../ode/src/step.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/stepfast.o: ../../ode/src/stepfast.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/testing.o: ../../ode/src/testing.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/timer.o: ../../ode/src/timer.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/util.o: ../../ode/src/util.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/Opcode.o: ../../OPCODE/Opcode.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/OPC_AABBCollider.o: ../../OPCODE/OPC_AABBCollider.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/OPC_AABBTree.o: ../../OPCODE/OPC_AABBTree.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/OPC_BaseModel.o: ../../OPCODE/OPC_BaseModel.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/OPC_BoxPruning.o: ../../OPCODE/OPC_BoxPruning.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/OPC_Collider.o: ../../OPCODE/OPC_Collider.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/OPC_Common.o: ../../OPCODE/OPC_Common.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/OPC_HybridModel.o: ../../OPCODE/OPC_HybridModel.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/OPC_LSSCollider.o: ../../OPCODE/OPC_LSSCollider.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/OPC_MeshInterface.o: ../../OPCODE/OPC_MeshInterface.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/OPC_Model.o: ../../OPCODE/OPC_Model.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/OPC_OBBCollider.o: ../../OPCODE/OPC_OBBCollider.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/OPC_OptimizedTree.o: ../../OPCODE/OPC_OptimizedTree.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/OPC_Picking.o: ../../OPCODE/OPC_Picking.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/OPC_PlanesCollider.o: ../../OPCODE/OPC_PlanesCollider.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/OPC_RayCollider.o: ../../OPCODE/OPC_RayCollider.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/OPC_SphereCollider.o: ../../OPCODE/OPC_SphereCollider.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/OPC_SweepAndPrune.o: ../../OPCODE/OPC_SweepAndPrune.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/OPC_TreeBuilders.o: ../../OPCODE/OPC_TreeBuilders.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/OPC_TreeCollider.o: ../../OPCODE/OPC_TreeCollider.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/OPC_VolumeCollider.o: ../../OPCODE/OPC_VolumeCollider.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/StdAfx.o: ../../OPCODE/StdAfx.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/IceAABB.o: ../../OPCODE/Ice/IceAABB.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/IceContainer.o: ../../OPCODE/Ice/IceContainer.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/IceHPoint.o: ../../OPCODE/Ice/IceHPoint.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/IceIndexedTriangle.o: ../../OPCODE/Ice/IceIndexedTriangle.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/IceMatrix3x3.o: ../../OPCODE/Ice/IceMatrix3x3.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/IceMatrix4x4.o: ../../OPCODE/Ice/IceMatrix4x4.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/IceOBB.o: ../../OPCODE/Ice/IceOBB.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/IcePlane.o: ../../OPCODE/Ice/IcePlane.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/IcePoint.o: ../../OPCODE/Ice/IcePoint.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/IceRandom.o: ../../OPCODE/Ice/IceRandom.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/IceRay.o: ../../OPCODE/Ice/IceRay.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/IceRevisitedRadix.o: ../../OPCODE/Ice/IceRevisitedRadix.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/IceSegment.o: ../../OPCODE/Ice/IceSegment.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/IceTriangle.o: ../../OPCODE/Ice/IceTriangle.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

$(OBJDIR)/IceUtils.o: ../../OPCODE/Ice/IceUtils.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o $@ -c $<

-include $(OBJECTS:%.o=%.d)

