#
#  Copyright (c) 2011-2015, ARM Limited. All rights reserved.
#  Copyright (c) 2014, Linaro Limited. All rights reserved.
#  Copyright (c) 2015 - 2016, Intel Corporation. All rights reserved.
#  Copyright (c) 2018, Bingxing Wang. All rights reserved.
#
#  This program and the accompanying materials
#  are licensed and made available under the terms and conditions of the BSD License
#  which accompanies this distribution.  The full text of the license may be found at
#  http://opensource.org/licenses/bsd-license.php
#
#  THE PROGRAM IS DISTRIBUTED UNDER THE BSD LICENSE ON AN "AS IS" BASIS,
#  WITHOUT WARRANTIES OR REPRESENTATIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED.
#
#

################################################################################
#
# Defines Section - statements that will be processed to create a Makefile.
#
################################################################################
[Defines]
  PLATFORM_NAME                  = SM8992
  PLATFORM_GUID                  = b6325ac2-9f3f-4b1d-b129-ac7b35ddde60
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010005
  OUTPUT_DIRECTORY               = Build/SM8992-$(ARCH)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Lumia950XLPkg/Bullhead.fdf

[BuildOptions.common]
  GCC:*_*_AARCH64_CC_FLAGS = -DSILICON_PLATFORM=8992

[PcdsFixedAtBuild.common]
  # Platform-specific
  gArmTokenSpaceGuid.PcdSystemMemorySize|0x80000000         # 2GB
  gArmTokenSpaceGuid.PcdSystemMemorySize|0x80000000         # 2GB
  gArmPlatformTokenSpaceGuid.PcdCoreCount|6
  gArmPlatformTokenSpaceGuid.PcdClusterCount|2
  gLumia950XLPkgTokenSpaceGuid.PcdSmbiosSystemModel|"LGE Nexus 5X"
  gLumia950XLPkgTokenSpaceGuid.PcdSmbiosProcessorModel|"Qualcomm Snapdragon 808 Processor (8992)"
  gLumia950XLPkgTokenSpaceGuid.PcdSmbiosSystemRetailModel|"bullhead"
  gLumia950XLPkgTokenSpaceGuid.SynapticsXMax|1080
  gLumia950XLPkgTokenSpaceGuid.SynapticsYMax|1920
  gLumia950XLPkgTokenSpaceGuid.PsciCpuSuspendAddress|0x6c03920
  
[PcdsFeatureFlag.common]
  gLumia950XLPkgTokenSpaceGuid.PcdIs4GBSystem|FALSE

!include Lumia950XLPkg/Shared.dsc.inc
